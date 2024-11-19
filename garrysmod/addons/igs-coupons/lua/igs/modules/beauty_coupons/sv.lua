util.AddNetworkString("IGS.GetCouponsAliases")
util.AddNetworkString("IGS.CreateCouponAlias")
util.AddNetworkString("IGS.DelCouponAlias")

local function sendCoupons(pl, data)
	net.Start("IGS.GetCouponsAliases")
		net.WriteUInt(#data,8) -- 255. Отображаем последние 255 активных
		local max_items = 2 ^ 8 - 1
		for offset = 0,max_items - 1 do -- снимаем значения с конца
			local row = data[#data - offset]
			if !row then break end -- мало значений

			IGS.COUP.WriteAlias(row)
		end
	net.Send(pl)
end

-- local dataset = {}
-- for i = 1,math.random(10,50) do
-- 	table.insert(dataset,{
-- 		id = i,
-- 		alias = string.readable(10),
-- 		code = string.Random(32),
-- 		activator = math.random(2) == 1 and AMD():SteamID64(),
-- 		date = os.time() - math.random(-100000,100000)
-- 	})
-- end
-- prt(dataset)







local aliases = {}
local function nilIfNULL(t, k)
	if t[k] == "NULL" then
		t[k] = nil
	end

	return t
end

--[[-------------------------------------------------------------------------
	Manage
---------------------------------------------------------------------------]]
function aliases:add(alias, coupon)
	local res = sql.Query([[
		INSERT INTO `igs_coupons_aliases` (`alias`, `code`)
		VALUES (]] .. sql.SQLStr(alias) .. ", " .. sql.SQLStr(coupon) .. [[)
	]])

	-- err
	if res == false then
		return false
	end

	local row = sql.QueryRow([[
		SELECT `id`, `alias`, `code`, `activator`, `date`
		FROM `igs_coupons_aliases`
		ORDER BY `id` DESC
		LIMIT 1
	]])

	return nilIfNULL(row, "activator")
end

function aliases:get() -- `activator` может быть "NULL" (СТРОКОЙ!)
	local d = sql.Query([[
		SELECT `id`, `alias`, `code`, `activator`, `date`
		FROM `igs_coupons_aliases`
	]]) or {}

	for _,row in ipairs(d) do
		nilIfNULL(row, "activator")
	end

	return d
end

-- Старейший купон алиаса (not iter)
function aliases:getUnused(alias)
	local row = sql.QueryRow([[
		SELECT `id`, `code`
		FROM `igs_coupons_aliases`
		WHERE `alias` = ]] .. sql.SQLStr(alias) .. [[ AND `activator` IS NULL
		LIMIT 1
	]])

	if row then
		return row.id, row.code
	end
end

function aliases:getByID(id)
	local row = sql.QueryRow([[
		SELECT `alias`, `code`, `activator`, `date`
		FROM `igs_coupons_aliases`
		WHERE `id` = ]] .. id .. [[
		LIMIT 1
	]])

	if row then
		return nilIfNULL(row, "activator")
	end
end

function aliases:del(id)
	local alias = self:getByID(id)
	if !alias then return false end

	sql.Query([[
		DELETE FROM `igs_coupons_aliases`
		WHERE `id` = ]] .. id .. [[
	]])

	-- https://img.qweqwe.ovh/1534944560750.png
	-- IGS.DeactivateCoupon("0", alias.code)
	alias.id = id
	return alias
end

function aliases:create(fCb, alias, iGiveIGS)
	alias = alias:sub(1,32)
	IGS.CreateCoupon(iGiveIGS, nil, "Assigned to " .. alias, function(coupon) -- до 50 символов примечание
		local coup = self:add(alias, coupon)
		fCb(coup) -- mb false
	end)
end

--[[-------------------------------------------------------------------------
	Activation
---------------------------------------------------------------------------]]
function aliases:wasPlayerActivate(s64, alias)
	-- `code`, `date`
	return sql.QueryValue([[
		SELECT `id` FROM `igs_coupons_aliases`
		WHERE `activator` = ']] .. s64 .. [[' AND `alias` = ]] .. sql.SQLStr(alias) .. [[
	]])
end

function aliases:setActivated(s64, id)
	sql.Query([[
		UPDATE `igs_coupons_aliases`
		SET `activator`=']] .. s64 .. [[',`date`=]] .. os.time() .. [[
		WHERE `id` = ]] .. id .. [[
	]])
end


--[[-------------------------------------------------------------------------
	Activation
---------------------------------------------------------------------------]]
-- Вид до 2018.11.14 (Сильно изменен и в net_sv тоже)
-- https://img.qweqwe.ovh/1542217515680.png
function aliases:playerActivate(pl, alias)
	if self:wasPlayerActivate(pl:SteamID64(), alias) then
		return false, "Вы уже активировали этот купон"
	end

	local id,sCoupon = self:getUnused(alias)

	-- Проверка есть внутри хука, так что не юзается, но пусть будет
	if !sCoupon then
		return false, "Купон не существует"
	end

	-- Думаю, не обязательно. Юзалось до 2018.11.14
	if pl:GetVar(alias,false) then
		return false, "Давай помедленнее"
	end
	pl:SetVar(alias,true) -- antispam

	-- До 2018.11.14 было внутри ok callback'а IGS.DeactivateCoupon
	-- В !ok ставил "0" вместо SteamID64
	self:setActivated(pl:SteamID64(), id)
	return sCoupon
end


-- return (can, err, newCoupon_)
hook.Add("IGS.PlayerEnterCoupon", "aliases", function(pl, code)
	if !aliases:getUnused(code) then return end -- алиаса не существует

	local sCoupon,err = aliases:playerActivate(pl, code)
	if sCoupon then
		IGS.PlayerActivateCoupon(pl, sCoupon)
		return true
	end

	return false, err
end)


-- hook
function IGS.COUP:PlayerManageAliases(pl) -- ,sAction
	return pl:IsSuperAdmin()
end

net.Receive("IGS.GetCouponsAliases",function(_, pl)
	if !hook.Call("PlayerManageAliases", IGS.COUP, pl, "get") then return end
	sendCoupons(pl, aliases:get())
end)

net.Receive("IGS.CreateCouponAlias",function(_,pl)
	local alias = net.ReadString()
	local sum   = net.ReadDouble()
	if !hook.Call("PlayerManageAliases", IGS.COUP, pl, "create", alias, sum) then return end

	aliases:create(function(c)
		net.Start("IGS.CreateCouponAlias")
			net.WriteBool(c)
			if c then
				IGS.COUP.WriteAlias(c)
			end
		net.Send(pl)
	end, alias, sum)
end)

net.Receive("IGS.DelCouponAlias",function(_, pl)
	local id = net.ReadUInt(16)
	if !hook.Call("PlayerManageAliases", IGS.COUP, pl, "delete", id) then return end

	local deleted_alias = aliases:del(id)
	net.Start("IGS.DelCouponAlias")
		net.WriteBool(deleted_alias)
		if deleted_alias then
			IGS.COUP.WriteAlias(deleted_alias)
		end
	net.Send(pl)
end)



local function createDB()
	sql.Query([[
		CREATE TABLE IF NOT EXISTS `igs_coupons_aliases` (
			`id`    INTEGER PRIMARY KEY AUTOINCREMENT,
			`alias` TEXT NOT NULL,
			`code`  TEXT NOT NULL,
			`activator` INTEGER,
			`date`  TIMESTAMP NOT NULL DEFAULT (strftime('%s', 'now'))
		);
	]])

	sql.Query([[
		CREATE UNIQUE INDEX IF NOT EXISTS activator_alias
		ON igs_coupons_aliases (`activator`, `alias`)
	]])
end

hook.Add("IGS.Loaded","igs_coupons_aliases",createDB)


-- prt({aliases:getUnused("alias asdasd")})

-- prt({aliases:get()})

-- aliases:create(function(...)
-- 	prt({...})
-- end, "test1", 5)
