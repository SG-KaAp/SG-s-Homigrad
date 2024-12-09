include("shared.lua")

surface.CreateFont("HomigradFont",{
	font = "Roboto",
	size = 18,
	weight = 1100,
	outline = false
})

surface.CreateFont("HomigradFontBig",{
	font = "Roboto",
	size = 25,
	weight = 1100,
	outline = false,
	shadow = true
})

surface.CreateFont("HomigradFontLarge",{
	font = "Roboto",
	size = ScreenScale(30),
	weight = 1100,
	outline = false
})

surface.CreateFont("HomigradFontSmall",{
	font = "Roboto",
	size = ScreenScale(10),
	weight = 1100,
	outline = false
})

net.Receive("round_active",function(len)
	roundActive = net.ReadBool()
	roundTimeStart = net.ReadFloat()
	roundTime = net.ReadFloat()
end)

local view = {}

hook.Add("PreCalcView","spectate",function(lply,pos,ang,fov,znear,zfar)
	lply = LocalPlayer()
	if lply:Alive() or GetViewEntity() ~= lply then return end

	view.fov = CameraSetFOV

	local spec = lply:GetNWEntity("HeSpectateOn")
	if not IsValid(spec) then
		view.origin = lply:EyePos()
		view.angles = ang

		return view
	end

	spec = IsValid(spec:GetNWEntity("Ragdoll")) and spec:GetNWEntity("Ragdoll") or spec

	local dir = Vector(1,0,0)
	dir:Rotate(ang)
	local tr = {}

	local head = spec:LookupBone("ValveBiped.Bip01_Head1")
	tr.start = head and spec:GetBonePosition(head) or spec:EyePos()
	tr.endpos = tr.start - dir * 75
	tr.filter = {lply,spec,lply:GetVehicle()}

	view.origin = util.TraceLine(tr).HitPos
	view.angles = ang

	return view
end)

SpectateHideNick = SpectateHideNick or false

local keyOld,keyOld2
local lply
flashlight = flashlight or nil
flashlightOn = flashlightOn or false

local gradient_d = Material("vgui/gradient-d")

hook.Add("HUDPaint","spectate",function()
	draw.SimpleText( "SG's Homigrad | Version v.1.7.1", "HomigradFont", 0, ScrH() - 16, Color(255, 255, 255, 255) )
	local lply = LocalPlayer()
	
	local spec = lply:GetNWEntity("HeSpectateOn")

	if lply:Alive() then
		if IsValid(flashlight) then
			flashlight:Remove()
			flashlight = nil
		end
	end

	local result = lply:PlayerClassEvent("CanUseSpectateHUD")
	if result == false then return end



	if
		(((not lply:Alive() or lply:Team() == 1002 or spec and lply:GetObserverMode() != OBS_MODE_NONE) or lply:GetMoveType() == MOVETYPE_NOCLIP)
		and not lply:InVehicle()) or result or hook.Run("CanUseSpectateHUD")
	then
		local ent = spec

		if IsValid(ent) then
			surface.SetFont("HomigradFont")
			local tw = surface.GetTextSize(ent:GetName())
			draw.SimpleText(ent:GetName(),"HomigradFont",ScrW() / 2 - tw / 2,ScrH() - 100,TEXT_ALING_CENTER,TEXT_ALING_CENTER)
			tw = surface.GetTextSize("Здоровье: " .. ent:Health())
			draw.SimpleText("Здоровье: " .. ent:Health(),"HomigradFont",ScrW() / 2 - tw / 2,ScrH() - 75,TEXT_ALING_CENTER,TEXT_ALING_CENTER)

			local func = TableRound().HUDPaint_Spectate
			if func then func(ent) end
		end

		local key = lply:KeyDown(IN_WALK)
		if keyOld ~= key and key then
			SpectateHideNick = not SpectateHideNick

			--chat.AddText("Ники игроков: " .. tostring(not SpectateHideNick))
		end
		keyOld = key

		draw.SimpleText("Отключение / Включение отображение ников на ALT","HomigradFont",15,ScrH() - 15,showRoundInfoColor,TEXT_ALIGN_LEFT,TEXT_ALIGN_BOTTOM)

		local key = input.IsButtonDown(KEY_F)
		if not lply:Alive() and keyOld2 ~= key and key then
			flashlightOn = not flashlightOn

			if flashlightOn then
				if not IsValid(flashlight) then
					flashlight = ProjectedTexture()
					flashlight:SetTexture("effects/flashlight001")
					flashlight:SetFarZ(900)
					flashlight:SetFOV(70)
					flashlight:SetEnableShadows( false )
				end
			else
				if IsValid(flashlight) then
					flashlight:Remove()
					flashlight = nil
				end
			end
		end
		keyOld2 = key

		if flashlight then
			flashlight:SetPos(EyePos())
			flashlight:SetAngles(EyeAngles())
			flashlight:Update()
		end

		if not SpectateHideNick then
			local func = TableRound().HUDPaint_ESP
			if func then func() end

			for _, v in ipairs(player.GetAll()) do --ESP
				if !v:Alive() or v == ent then continue end

				local ent = IsValid(v:GetNWEntity("Ragdoll")) and v:GetNWEntity("Ragdoll") or v
				local screenPosition = ent:GetPos():ToScreen()
				local x, y = screenPosition.x, screenPosition.y
				local teamColor = v:GetPlayerColor():ToColor()
				local distance = lply:GetPos():Distance(v:GetPos())
				local factor = 1 - math.Clamp(distance / 1024, 0, 1)
				local size = math.max(10, 32 * factor)
				local alpha = math.max(255 * factor, 80)

				local text = v:Name()
				surface.SetFont("Trebuchet18")
				local tw, th = surface.GetTextSize(text)

				surface.SetDrawColor(teamColor.r, teamColor.g, teamColor.b, alpha * 0.5)
				surface.SetMaterial(gradient_d)
				surface.DrawTexturedRect(x - size / 2 - tw / 2, y - th / 2, size + tw, th)

				surface.SetTextColor(255, 255, 255, alpha)
				surface.SetTextPos(x - tw / 2, y - th / 2)
				surface.DrawText(text)

				local barWidth = math.Clamp((v:Health() / 150) * (size + tw), 0, size + tw)
				local healthcolor = v:Health() / 150 * 255

				surface.SetDrawColor(255, healthcolor, healthcolor, alpha)
				surface.DrawRect(x - barWidth / 2, y + th / 1.5, barWidth, ScreenScale(1))
			end
		end
	end
end)

hook.Add("HUDDrawTargetID","no",function() return false end)

local laserweps = {
	["weapon_xm1014"] = true,
	["weapon_mp40"] = true,
	["weapon_m249"] = true,
	["weapon_fiveseven"] = true,
	["weapon_hk_usp"] = true,
	["weapon_mk18"] = true,
	["weapon_fiveseven"] = true,
	["weapon_hk_usp"] = true,
	["weapon_m4a1"] = true,
	["weapon_ar15"] = true,
	["weapon_m3super"] = true,
	["weapon_mp7"] = true,
	["weapon_p220"] = true,
	["weapon_galil"] = true,
	["weapon_deagle"] = true,
	["weapon_beanbag"] = true,
	["weapon_glock"] = true
}
laserplayers = laserplayers or {}
local mat = Material("sprites/bluelaser1")
local mat2 = Material("Sprites/light_glow02_add_noz")
hook.Add("PostDrawOpaqueRenderables", "laser", function()
	--local ply = (LocalPlayer():Alive() and LocalPlayer()) or (!LocalPlayer():Alive() and LocalPlayer():GetNWEntity("SpectateGuy"))
	--if !IsValid(ply) then return end
	for i,ply in pairs(laserplayers) do
		if not IsValid(ply) then laserplayers[i] = nil end
		ply.Laser = ply.Laser or false
		local actwep = (IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass()) or (ply:GetNWString("curweapon")!=nil and ply:GetNWString("curweapon"))
		if IsValid(ply) and ply.Laser and !ply:GetNWInt("Otrub") and laserweps[IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() or ply.curweapon] then
			local wep = IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon() or (IsValid(ply:GetNWEntity('wep')) and ply:GetNWEntity('wep'))
			if !IsValid(wep) then continue end
			
			local att = wep:GetAttachment(wep:LookupAttachment("muzzle"))
			
			if att==nil then continue end
			local pos = att.Pos
			local ang = att.Ang

			local t = {}

			t.start = pos+ang:Right()*2+ang:Forward()*-5+ang:Up()*-0.5
			
			t.endpos = t.start + ang:Forward()*9000
			
			t.filter = {ply,wep,LocalPlayer()}
			t.mask = MASK_SOLID
			local tr = util.TraceLine(t)

			local angle = (tr.StartPos - tr.HitPos):Angle()
			
			cam.Start3D(EyePos(),EyeAngles())

			render.SetMaterial(mat)
			render.DrawBeam(tr.StartPos, tr.HitPos, 1, 0, 15.5, Color(255, 0, 0))
			
			local Size = math.random(3,4)
			render.SetMaterial(mat2)
			local tra = util.TraceLine({
				start = tr.HitPos - (tr.HitPos - EyePos()):GetNormalized(),
				endpos = EyePos(),
				filter = {LocalPlayer(),ply,wep,ply:GetNWEntity("Ragdoll")},
				mask = MASK_SHOT
			})

			if not tra.Hit then
				render.DrawSprite(tr.HitPos, Size, Size,Color(255,0,0))
			end
			--render.DrawQuadEasy(tr.HitPos, (tr.StartPos - tr.HitPos):GetNormal(), Size, Size, Color(255,0,0), 0)

			cam.End3D()
		end
	end
end)

function draw.CirclePart(x, y, radius, seg, parts, pos)
	local cir = {}
	table.insert(cir, {
		x = x,
		y = y,
		u = 0.5,
		v = 0.5
	})

	for i = 0, seg do
		local a = math.rad((i / seg) * -360 / parts - pos * 360 / parts)
		table.insert(cir, {
			x = x + math.sin(a) * radius,
			y = y + math.cos(a) * radius,
			u = math.sin(a) / 2 + 0.5,
			v = math.cos(a) / 2 + 0.5
		})
		--draw.DrawText("asd","HomigradFontBig",x + math.sin(a) * radius,y + math.cos(a) * radius)
	end

	--local a = math.rad(0)
	--table.insert(cir, {x = x + math.sin(a) * radius, y = y + math.cos(a) * radius, u = math.sin(a) / 2 + 0.5, v = math.cos(a) / 2 + 0.5})
	surface.DrawPoly(cir)
end

local menuPanel
hg.radialOptions = hg.radialOptions or {}
local colBlack = Color(0, 0, 0, 122)
local colWhite = Color(255, 255, 255, 255)
local colWhiteTransparent = Color(255, 255, 255, 122)
local colTransparent = Color(0, 0, 0, 0)
local matHuy = Material("vgui/white")
local vecXY = Vector(0, 0)
local vecDown = Vector(0, 1)
local isMouseIntersecting = false
local isMouseOnRadial = false
local current_option = 1
local current_option_select = 1
local hook_Run = hook.Run
local function dropWeapon()
	RunConsoleCommand("say", "*drop")
end
local function unloadWeapon()
	net.Start("Unload")
    net.WriteEntity(wep)
    net.SendToServer()
end
local function lasergg()
	if LocalPlayer().Laser then
		LocalPlayer().Laser = false
		net.Start("lasertgg")
	
		net.WriteBool(false)
		net.SendToServer()
		LocalPlayer():EmitSound("items/nvg_off.wav")
	else
		LocalPlayer().Laser = true
		net.Start("lasertgg")
		net.WriteBool(true)
		net.SendToServer()
		LocalPlayer():EmitSound("items/nvg_on.wav")
	end
end
local function armorMenu()
	LocalPlayer():ConCommand("jmod_ez_inv")
end
local function ammoMenu()
	LocalPlayer():ConCommand("hg_ammomenu")
end
local function toggleEyesMenu()
	LocalPlayer():ConCommand("jmod_ez_toggleeyes")
end
local function saluteEmote()
	LocalPlayer():ConCommand("act salute; say Здравия желаю!")
	LocalPlayer():EmitSound("snd_jack_hmcd_salute.wav",75)
end
local function agreeEmote()
	LocalPlayer():ConCommand("act agree; say Да")
	LocalPlayer():EmitSound("snd_jack_hmcd_agree.wav",75)
end
local function disagreeEmote()
	LocalPlayer():ConCommand("act disagree; say Нет")
	LocalPlayer():EmitSound("snd_jack_hmcd_disagree.wav",75)
end
local function beconEmote()
	LocalPlayer():ConCommand("act becon; say Идём!")
	LocalPlayer():EmitSound("snd_jack_hmcd_becon.wav",75)
end
local function forwardEmote()
	LocalPlayer():ConCommand("act forward")
end
local function bowEmote()
	LocalPlayer():ConCommand("act bow; say Слушаю и повинуюсь!")
	LocalPlayer():EmitSound("snd_jack_hmcd_bow.wav",75)
end
local function groupEmote()
	LocalPlayer():ConCommand("act group")
end
local function danceEmote()
	LocalPlayer():ConCommand("act dance; say Все танцуем!")
	LocalPlayer():EmitSound("snd_jack_hmcd_dance.wav",75)
end
local function cheerEmote()
	LocalPlayer():ConCommand("act cheer; say Урааа!")
	LocalPlayer():EmitSound("snd_jack_hmcd_wow.wav",75)
end
local function laughEmote()
	LocalPlayer():ConCommand("act laugh; say Аахахахаха!")
	LocalPlayer():EmitSound("snd_jack_hmcd_laugh.wav",75)
end
local function haltEmote()
	LocalPlayer():ConCommand("act halt")
end

hook.Add("radialOptions", "!Main", function()
	local lply = LocalPlayer()
    local wep = lply:GetActiveWeapon()
	local tbl
	if wep:GetClass()!="weapon_hands" then
		tbl = {dropWeapon, "Выбросить оружие"}
		hg.radialOptions[#hg.radialOptions + 1] = tbl
	end
	if wep:Clip1()>0 then
		tbl = {unloadWeapon, "Разрядить оружие"}
		hg.radialOptions[#hg.radialOptions + 1] = tbl
	end
	if laserweps[wep:GetClass()] then
		tbl = {lasergg, "Вкл/Выкл Лазер"}
		hg.radialOptions[#hg.radialOptions + 1] = tbl
	end
	tbl = {armorMenu, "Меню брони"}
	hg.radialOptions[#hg.radialOptions + 1] = tbl
	tbl = {ammoMenu, "Меню патрон"}
	hg.radialOptions[#hg.radialOptions + 1] = tbl
	local EZarmor = LocalPlayer().EZarmor
	if JMod.GetItemInSlot(EZarmor, "eyes") then
		tbl = {toggleEyesMenu, "Активировать Маску/Забрало"}
		hg.radialOptions[#hg.radialOptions + 1] = tbl
	end
end)
hook.Add("radialEmoteOptions", "!Emote", function()
	tbl = {saluteEmote, "Отдать честь"}
	hg.radialOptions[#hg.radialOptions + 1] = tbl
	tbl = {agreeEmote, "Одобрить"}
	hg.radialOptions[#hg.radialOptions + 1] = tbl
	tbl = {disagreeEmote, "Отклонить"}
	hg.radialOptions[#hg.radialOptions + 1] = tbl
	tbl = {beconEmote, "Идём!"}
	hg.radialOptions[#hg.radialOptions + 1] = tbl
	tbl = {bowEmote, "Поклон"}
	hg.radialOptions[#hg.radialOptions + 1] = tbl
	tbl = {forwardEmote, "Приказ вперёд!"}
	hg.radialOptions[#hg.radialOptions + 1] = tbl
	tbl = {groupEmote, "Приказ за мной!"}
	hg.radialOptions[#hg.radialOptions + 1] = tbl
	tbl = {groupEmote, "Приказ остановиться"}
	hg.radialOptions[#hg.radialOptions + 1] = tbl
	tbl = {danceEmote, "Танец"}
	hg.radialOptions[#hg.radialOptions + 1] = tbl
	tbl = {cheerEmote, "Ликование"}
	hg.radialOptions[#hg.radialOptions + 1] = tbl
	tbl = {laughEmote, "Насмешка"}
	hg.radialOptions[#hg.radialOptions + 1] = tbl
end)
local function CreateRadialMenu(type)
	local sizeX, sizeY = ScrW(), ScrH()
	hg.radialOptions = {}
	if type == 1 then
		hook_Run("radialOptions")
	elseif type == 2 then
		hook_Run("radialEmoteOptions")
	end
	local options = hg.radialOptions
	if IsValid(menuPanel) then
		menuPanel:Remove()
		menuPanel = nil
	end

	menuPanel = vgui.Create("DPanel")
	menuPanel:SetPos(ScrW() / 2 - sizeX / 2, ScrH() / 2 - sizeY / 2)
	menuPanel:SetSize(sizeX, sizeY)
	menuPanel:MakePopup()
	menuPanel:SetKeyBoardInputEnabled(false)
	input.SetCursorPos(sizeX / 2, sizeY / 2)
	menuPanel.Paint = function(self, w, h)
		local x, y = input.GetCursorPos()
		x = x - sizeX / 2
		y = y - sizeY / 2
		vecXY.x = x
		vecXY.y = y
		local deg = (vecXY:GetNormalized() - vecDown):Angle()
		deg = (deg[2] - 180) * 2
		for num, option in pairs(options) do
			local num = num - 1
			local r = 400
			local partDeg = 360 / #options
			local sqrt = math.sqrt(x ^ 2 + y ^ 2)
			isMouseOnRadial = sqrt <= r and sqrt > 4
			isMouseIntersecting = isMouseOnRadial and deg > num * partDeg and deg < (num + 1) * partDeg
			if isMouseIntersecting then current_option = num + 1 end
			if option[3] then
				surface.SetMaterial(matHuy)
				surface.SetDrawColor(isMouseIntersecting and colBlack or colBlack)
				draw.CirclePart(w / 2, h / 2, r, 30, #options, num)
				local count = #option[4]
				local selectedPart = math.floor((r - sqrt) / (r / count)) + 1
				current_option_select = selectedPart
				for i, opt in pairs(option[4]) do
					local selected = selectedPart == i
					surface.SetMaterial(matHuy)
					surface.SetDrawColor((selected and isMouseIntersecting) and colWhiteTransparent or colTransparent)
					draw.CirclePart(w / 2, h / 2, r / i, 30, #options, num)
					local a = -partDeg * num - partDeg / 2
					a = math.rad(a)
					draw.DrawText(opt, "HomigradFontBig", ScrW() / 2 + math.sin(a) * r / i / 1.5, ScrH() / 2 + math.cos(a) * r / i / 1.5, colWhite, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
				end

				continue
			end

			surface.SetMaterial(matHuy)
			surface.SetDrawColor(isMouseIntersecting and colWhiteTransparent or colBlack)
			draw.CirclePart(w / 2, h / 2, r, 30, #options, num)
			local a = -partDeg * num - partDeg / 2
			a = math.rad(a)
			draw.DrawText(option[2], "HomigradFontBig", ScrW() / 2 + math.sin(a) * r / 1.5, ScrH() / 2 + math.cos(a) * r / 1.5, colWhite, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end
end

local function PressRadialMenu()
	local options = hg.radialOptions
	--print(options[current_option][1])
	if IsValid(menuPanel) and options[current_option] and isMouseOnRadial then
		local func = options[current_option][1]
		if isfunction(func) then func(current_option_select) end
	end

	if IsValid(menuPanel) then
		menuPanel:Remove()
		menuPanel = nil
	end
end

local function ToggleMenu(toggle)
    if toggle and LocalPlayer():Alive() then
		CreateRadialMenu(1)
        --[[local w,h = ScrW(), ScrH()
        if IsValid(wepMenu) then wepMenu:Remove() end
        local lply = LocalPlayer()
        local wep = lply:GetActiveWeapon()
        if !IsValid(wep) then return end
        wepMenu = vgui.Create("DMenu")
        wepMenu:SetPos(w/3,h/2)
        wepMenu:MakePopup()
        wepMenu:SetKeyboardInputEnabled(false)
		if wep:GetClass()!="weapon_hands" then
			wepMenu:AddOption("Выкинуть",function()
				LocalPlayer():ConCommand("say *drop")
			end)
		end
        if wep:Clip1()>0 then
            wepMenu:AddOption("Разрядить",function()
                net.Start("Unload")
                net.WriteEntity(wep)
                net.SendToServer()
            end)
        end
		if laserweps[wep:GetClass()] then
        wepMenu:AddOption("Вкл/Выкл Лазер",function()
            if LocalPlayer().Laser then
				LocalPlayer().Laser = false
				net.Start("lasertgg")

				net.WriteBool(false)
				net.SendToServer()
				LocalPlayer():EmitSound("items/nvg_off.wav")
			else
				LocalPlayer().Laser = true
				net.Start("lasertgg")
				net.WriteBool(true)
				net.SendToServer()
				LocalPlayer():EmitSound("items/nvg_on.wav")
			end
        end)
		end

		plyMenu = vgui.Create("DMenu")
        plyMenu:SetPos(w/1.7,h/2)
        plyMenu:MakePopup()
        plyMenu:SetKeyboardInputEnabled(false)

		plyMenu:AddOption("Меню Брони",function()
            LocalPlayer():ConCommand("jmod_ez_inv")
        end)
		plyMenu:AddOption("Меню Патрон",function()
			LocalPlayer():ConCommand("hg_ammomenu")
		end)
		local EZarmor = LocalPlayer().EZarmor
		if JMod.GetItemInSlot(EZarmor, "eyes") then
			plyMenu:AddOption("Активировать Маску/Забрало",function()
				LocalPlayer():ConCommand("jmod_ez_toggleeyes")
			end)
		end-]]
    else
		PressRadialMenu()
		--[[if IsValid(wepMenu) then
        	wepMenu:Remove()
		end
		if IsValid(plyMenu) then
        	plyMenu:Remove()
		end--]]
    end
end
local function ToggleEmoteMenu(toggle)
    if toggle and LocalPlayer():Alive() then
		CreateRadialMenu(2)
	elseif !toggle then
		PressRadialMenu()
    end
end

local active,oldValue,activeG,oldValueG
hook.Add("Think","Thinkhuyhuy",function()
	active = input.IsKeyDown(KEY_C)
	activeG = input.IsKeyDown(KEY_H)
	if oldValue ~= active then
		oldValue = active
		if active then
			ToggleMenu(true)
		else
			ToggleMenu(false)
		end
	end
	if oldValueG ~= activeG then
		oldValueG = activeG
		if activeG then
			ToggleEmoteMenu(true)
		else
			ToggleEmoteMenu(false)
		end
	end
end)

net.Receive("lasertgg",function(len)
	local ply = net.ReadEntity()
	local boolen = net.ReadBool()
	if boolen then
		laserplayers[ply:EntIndex()] = ply
	else
		laserplayers[ply:EntIndex()] = nil
	end
	ply.Laser = boolen
end)

hook.Add("OnEntityCreated", "homigrad-colorragdolls", function(ent)
	if ent:IsRagdoll() then
		timer.Create("ragdollcolors-timer" .. tostring(ent), 0.1, 0, function()
			--ent.ply = ent.ply or RagdollOwner(ent)
			--local ply = ent.ply
			--if IsValid(ply) then
			if IsValid(ent) then
				ent.playerColor = ent:GetNWVector("plycolor")
				--print(ent.ply,ent.playerColor)
				ent.GetPlayerColor = function()
					return ent.playerColor
				end
				timer.Remove("ragdollcolors-timer" .. tostring(ent))
			end
		end)
	end
end)

local function GetClipForCurrentWeapon( ply )
	if ( !IsValid( ply ) ) then return -1 end

	local wep = ply:GetActiveWeapon()
	if ( !IsValid( wep ) ) then return -1 end

	return wep:Clip1(), wep:GetMaxClip1(), ply:GetAmmoCount( wep:GetPrimaryAmmoType() )
end

hook.Add("HUDShouldDraw","HideHUD_ammo",function(name)
    if name == "CHudAmmo" then return false end
end)

local clipcolor = color_white
local clipcolorlow = Color(247, 178, 40, 255)
local clipcolorempty = Color(247, 40, 40, 255)
local colorgray = Color(200, 200, 200)
local shadow = color_black

--[[hook.Add("HUDPaint","homigrad-fancyammo",function()
	--[[local ply = LocalPlayer()
	local clip, maxclip, ammo = GetClipForCurrentWeapon(ply)
	local clipstring = tostring(clip)
	local sw, sh = ScrW(), ScrH()
	if clip != -1 and maxclip > 0 then
		if oldclip != clip then
			randomx = math.random(0, 10)
			randomy = math.random(0, 10)
			timer.Simple(0.15, function()
				oldclip = clip
			end)
		else
			randomx = 0
			randomy = 0
		end

		if clip == 0 then
			clipcolor = clipcolorempty
		elseif maxclip / clip >= 6 or clip == 1 and maxclip != 1 then
			clipcolor = clipcolorlow
		else
			clipcolor = color_white
		end

		draw.SimpleText("/ " .. ammo, "HomigradFontSmall", sw * 0.9 + 2 + #clipstring * sw * 0.02, sh * 0.97 + 2, shadow)
		draw.SimpleText("/ " .. ammo, "HomigradFontSmall", sw * 0.9 + #clipstring * sw * 0.02, sh * 0.97, colorgray)

		draw.SimpleText(clip, "HomigradFontLarge", sw * 0.89 + 5 + randomx, sh * 0.92 + 5 + randomy, shadow)
		draw.SimpleText(clip, "HomigradFontLarge", sw * 0.89 + randomx, sh * 0.92 + randomy, clipcolor)
	end
end)
]]
net.Receive("remove_jmod_effects",function(len)
	LocalPlayer().EZvisionBlur = 0
	LocalPlayer().EZflashbanged = 0
end)

local meta = FindMetaTable("Player")

function meta:HasGodMode() return self:GetNWBool("HasGodMode") end

concommand.Add("hg_getentity",function()
	local ent = LocalPlayer():GetEyeTrace().Entity
	print(ent)
	if not IsValid(ent) then return end
	print(ent:GetModel())
	print(ent:GetClass())
end)

gameevent.Listen("player_spawn")
hook.Add("player_spawn","gg",function(data)
	local ply = Player(data.userid)

	if ply.SetHull then
		ply:SetHull(ply:GetNWVector("HullMin"),ply:GetNWVector("Hull"))
		ply:SetHullDuck(ply:GetNWVector("HullMin"),ply:GetNWVector("HullDuck"))
	end

	hook.Run("Player Spawn",ply)
end)

hook.Add("DrawDeathNotice","no",function() return false end)

