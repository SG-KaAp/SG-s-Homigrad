--[[-------------------------------------------------------------------------
	Набросок фрейма: https://img.qweqwe.ovh/1534882156505.png
---------------------------------------------------------------------------]]

local function removeAllCouponsWithName(alias)
	IGS.COUP.Request(function(rows)
		local wanted = {}
		for _,c in ipairs(rows) do
			if c.activator == false and c.alias == alias then -- активный и нужный
				table.insert(wanted, c)
			end
		end

		if #wanted == 0 then
			LocalPlayer():ChatPrint("Активных купонов с этим алиасом не найдено")
			return
		end

		for _,c in ipairs(wanted) do
			IGS.COUP.Delete(function(ok)
				LocalPlayer():ChatPrint(ok and "Алиас удален" or "Алиас не удален")
			end, c.id)
		end
	end)
end

local function addTab(activity,sidebar)
	local bg = sidebar:AddPage("Последние активации")

	function bg:InsertCoupon(c)
		c.datestr = IGS.TimestampToDate(c.date)
		c.shortcode = c.code:sub(1,10) .. "..." .. c.code:sub(-10)

		if c.activator then
			local pl = player.GetBySteamID(c.activator)
			local nick_or_sid = pl and pl:Name() or c.activator

			IGS.AddTextBlock(bg.side, nick_or_sid, c.alias .. "\n" .. c.datestr)
			return
		end

		local line = bg.table:AddLine(c.id, c.alias, c.shortcode, c.datestr)
		line:SetTooltip("Кликните для доп. действий")
		for _,v in ipairs(line.columns) do
			v:SetCursor("hand")
		end

		line.DoClick = function()
			local m = DermaMenu(line)
			m:AddOption("Скопировать",function() SetClipboardText(c.code) end)
			m:AddOption("Удалить",function() IGS.COUP.Delete(function(ok)
				if ok then
					line:Remove()
					-- bg.table:PerformLayout()
				else
					IGS.ShowNotify("Купон не удален. Переоткройте меню и попробуйте снова", "Ошибка")
				end
			end, c.id) end)
			m:AddOption("Удалить все с этим именем",function()
				removeAllCouponsWithName(c.alias)
				IGS.ShowNotify("Необходимо переоткрыть меню, чтобы увидеть изменения", "Алиасы удалены")
			end)
			m:Open()
		end

		bg.table:PerformLayout()
	end

	function bg:LoadData()
		IGS.COUP.Request(function(rows)
			if !IsValid(bg) then return end

			for _,row in ipairs(rows) do
				bg:InsertCoupon(row)
			end
		end)
	end

	function bg:CreateCoupons(amount, alias, sum)
		for _ = 1,amount do
			IGS.COUP.Create(function(ok, c)
				if ok then
					if IsValid(bg) then bg:InsertCoupon(c) end -- вставит в конец, а не в начало, но лень ебаться
				else
					IGS.ShowNotify("Купон не создан или создан с ошибкой. Перезагрузите меню и попробуйте снова", "Ошибка")
				end
			end, alias, sum)
		end
	end

	-- control panel
	bg.cp = uigs.Create("Panel", function(pnl)
		pnl:Dock(BOTTOM)
		pnl:DockMargin(20,0,20,5)
		pnl:SetTall(60)

		pnl.top = uigs.Create("Panel", function(self)
			self:Dock(TOP)
			self:DockMargin(50,0,50,0)
			self:DockPadding(0,2,0,2)
			self:SetTall(30)
		end, pnl)

		pnl.bottom = uigs.Create("Panel", function(self)
			self:Dock(BOTTOM)
			self:DockMargin(50,0,50,0)
			self:SetTall(30)
		end, pnl)

		------------------------------------------------

		-- алиас
		pnl.alias = uigs.Create("DTextEntry", function(self)
			self:Dock(FILL)
			self:SetValue("beauty_coupon_code")
		end, pnl.top)

		-- сумма
		pnl.sum = uigs.Create("DTextEntry", function(self)
			self:Dock(RIGHT)
			self:DockMargin(5,0,0,0)
			self:SetWide(100)
			self:SetNumeric(true)
			self:SetValue(50)
		end, pnl.top)

		------------------------------------------------

		-- количество
		pnl.amount = uigs.Create("DNumSlider", function(self)
			self:Dock(FILL)
			self:SetText("Количество купонов:")
			self:DockMargin(5,5,5,5)
			self:SetDecimals(0)
			self:SetMinMax(1, 30)
			self:SetValue(10)

			self.Label:SetTextColor(IGS.col.TEXT_HARD)
		end, pnl.bottom)

		-- кнопка
		pnl.submit = uigs.Create("igs_button", function(self)
			self:Dock(RIGHT)
			self:SetWide(100)
			self:SetText("Создать")
			self.DoClick = function()
				local alias,sum = pnl.alias:GetValue(), pnl.sum:GetValue()
				if alias:Trim() == "" or !tonumber(sum) then
					return
				end

				-- https://t.me/c/1353676159/7670
				bg:CreateCoupons(pnl.amount:GetTextArea():GetInt(), alias, sum)
			end
			self:SetActive(true)
		end, pnl.bottom)
	end, bg)

	bg.table = uigs.Create("igs_table", function(tbl)
		tbl:Dock(FILL)
		tbl:DockMargin(5,5,5,5)
		-- tbl:SetSize(790, 565)

		tbl:SetTitle("Активные купоны")

		tbl:AddColumn("ID",50)
		tbl:AddColumn("Алиас")
		tbl:AddColumn("Купон", 200)
		tbl:AddColumn("Создание", 130)
	end, bg)

	bg:LoadData()
	activity:AddTab("Купоны",bg,"materials/icons/fa32/ticket.png") -- rub, tag, ticket
end

hook.Add("IGS.CatchActivities","beauty_coupons",function(activity,sbar)
	if LocalPlayer():IsSuperAdmin() then
		addTab(activity,sbar)
	end
end)
