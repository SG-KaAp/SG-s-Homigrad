--[[-------------------------------------------------------------------------
	Обязательные методы:
		:SetPrice()
		:SetDescription()

	Популярные:
		:SetTerm()            --> Срок действия в днях (по умолчанию 0, т.е. одноразовая активация)
		:SetStackable()       --> Разрешает покупать несколько одинаковых предметов
		:SetCategory()        --> Группирует предметы
		:SetIcon()            --> Картинка, модель или материал в качестве иконки (пример в файле)
		:SetHighlightColor()  --> Цвет заголовка
		:SetDiscountedFrom()  --> Скидка
		:SetOnActivate()      --> Свое действие при активации
		:SetCanSee(false)     --> Скрытый предмет
		:SetCanSee(function(pl) return pl:HasPurchase("vip") end) --> Альтернативное применение

	Полезное:
		gm-donate.net/docs    -->  Подробнее о методах и все остальные
		gm-donate.net/support -->  Быстрая помощь и настройка от нас
		gm-donate.net/mods    -->  Бесплатные модули
---------------------------------------------------------------------------]]

-- Ниже примеры с объяснением

--[[-------------------------------------------------------------------------
	Разрешаем покупать отмычку а F4 только донатерам (DarkRP)
	https://img.qweqwe.ovh/1493244432112.png -- частичное объяснение
---------------------------------------------------------------------------]]

--[[
IGS("Отмычка", "otmichka") -- второй параметр не должен(!) повторяться с другими предметами
	:SetPrice(1) -- 1 рубль

	-- 0 - одноразовое (Т.е. купил, выполнилось OnActivate и забыл. Полезно для валюты)
	-- 30 - месяц, 7 - неделя и т.д. :SetPerma() - навсегда
	:SetTerm(30)

	:SetDarkRPItem("lockpick") -- реальный класс энтити
	:SetDescription("Разрешает вам покупать отмычку") -- описание
	:SetCategory("Оружие") -- категория

	-- квадратная ИКОНКА (Не обязательно). Отобразится на главной странице. Может быть с прозрачностью
	:SetIcon("https://i.imgur.com/4zfVs9s.png")

	-- иконку можно указать материалом, либо моделькой
	:SetIcon("icon16/disk.png", "material") -- "material" в конце
	:SetIcon("models/props_junk/Shoe001a.mdl", "model") -- "model" и путь к модельке

	-- БАННЕР 1000х400 (Не обязательно). Отобразится в подробностях итема
	:SetImage("https://i.imgur.com/RqsP5nP.png")

	-- Этот предмет будут видеть только те, кто купил group_vip_30d. У group_vip_30d должен быть :SetNetworked(true)
	:SetCanSee(function(pl) return pl:HasPurchase("group_vip_30d") end)

	-- Для разработчиков. С этим методом :HasPurchase("uid") будет работать не только на SERVER, но и на CLIENT
	:SetNetworked(true)
--]]

--[[-------------------------------------------------------------------------
	Доступ к энтити, оружию и машинам через спавнменю
---------------------------------------------------------------------------]]
--[[IGS("Арбалет с HL", "wep_arbalet"):SetWeapon("weapon_crossbow")
	:SetPrice(100)
	:SetTerm(100)
	:SetDescription("Разрешает спавнить Арбалет через спавн меню в любое время")
	:SetIcon("models/weapons/w_crossbow.mdl", "model") -- "model" значит, что указана моделька, а не ссылка

IGS("Джип с HL", "veh_jeep"):SetVehicle("Jeep")
	:SetPrice(2000)
	:SetTerm(30)
	:SetDescription("Разрешает спавнить джип с халвы через спавн меню в любое время")
--]]
IGS("Вейп на месяц", "vape")
	:SetPrice(75)
	:SetTerm(30) -- 30 дней
	:SetIcon("https://steamuserimages-a.akamaihd.net/ugc/276219973932937725/233F200429DB36FAB0155F3393DF7FFF31D26096/?imw=268&imh=268&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true")
	:SetCategory("Оружие")
	:SetDescription("Добавляет вейп вам в инвентарь при спавне.")
	:AddHook("PlayerLoadout", function(pl)
		if pl:HasPurchase("vape") then
			pl:Give("weapon_vape")
		end
	end)
IGS("Вейп навсегда", "vape_navsegda")
	:SetPrice(225)
	:SetPerma()
	:SetIcon("https://steamuserimages-a.akamaihd.net/ugc/276219973932937725/233F200429DB36FAB0155F3393DF7FFF31D26096/?imw=268&imh=268&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true")
	:SetCategory("Оружие")
	:SetDescription("Добавляет вейп вам в инвентарь при спавне.")
	:AddHook("PlayerLoadout", function(pl)
		if pl:HasPurchase("vape_navsegda") then
			pl:Give("weapon_vape")
		end
	end)
	:SetCanSee(false)
IGS("Фруктовый вейп на месяц", "juicevape")
	:SetPrice(90)
	:SetTerm(30) -- 30 дней
	:SetIcon("https://steamuserimages-a.akamaihd.net/ugc/276219973932937725/233F200429DB36FAB0155F3393DF7FFF31D26096/?imw=268&imh=268&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true")
	:SetCategory("Оружие")
	:SetDescription("Добавляет фруктовый вейп вам в инвентарь при спавне.")
	:AddHook("PlayerLoadout", function(pl)
		if pl:HasPurchase("juicevape") then
			pl:Give("weapon_vape_juicy")
		end
	end)
IGS("Фруктовый вейп навсегда", "juicevape_navsegda")
	:SetPrice(275)
	:SetPerma()
	:SetIcon("https://steamuserimages-a.akamaihd.net/ugc/276219973932937725/233F200429DB36FAB0155F3393DF7FFF31D26096/?imw=268&imh=268&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true")
	:SetCategory("Оружие")
	:SetDescription("Добавляет фруктовый вейп вам в инвентарь при спавне.")
	:AddHook("PlayerLoadout", function(pl)
		if pl:HasPurchase("juicevape_navsegda") then
			pl:Give("weapon_vape_juicy")
		end
	end)
	:SetCanSee(false)
IGS("Кам Ган Дурова", "durovcumgun")
	:SetPrice(95)
	:SetTerm(30) -- 30 дней
	:SetIcon("https://s0.rbk.ru/v6_top_pics/media/img/4/94/347246112545944.jpeg")
	:SetCategory("Оружие")
	:SetDescription("Добавляет Кам Ган Дурова вам в инвентарь при спавне.")
	:AddHook("PlayerLoadout", function(pl)
		if pl:HasPurchase("durovcumgun") then
			pl:Give("weapon_durovcumgun")
		end
	end)
IGS("100 донат-поинтов для поинтшопа", "sto_point")
	:SetPrice(25)
	:SetCategory("Поинты")
	:SetDescription("Даёт вам 100 донат-поинтов в F3")
	:SetTerm(0)
	:SetIcon("https://steamuserimages-a.akamaihd.net/ugc/27364031623541564/5DD8D16A5C7043D64F22B8D78105184E41931BEE/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false")
	:SetOnActivate(function(pl)
        pl:PS2_AddPremiumPoints(100)
    end)
IGS("1000 донат-поинтов для поинтшопа", "tisha_point")
	:SetPrice(75)
	:SetCategory("Поинты")
	:SetDescription("Даёт вам 1000 донат-поинтов в F3")
	:SetTerm(0)
	:SetIcon("https://steamuserimages-a.akamaihd.net/ugc/27364031623541564/5DD8D16A5C7043D64F22B8D78105184E41931BEE/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false")
	:SetOnActivate(function(pl)
        pl:PS2_AddPremiumPoints(500)
    end)
IGS("10000 донат-поинтов для поинтшопа", "desattish_point")
	:SetPrice(100)
	:SetCategory("Поинты")
	:SetDescription("Даёт вам 10000 донат-поинтов в F3")
	:SetTerm(0)
	:SetIcon("https://steamuserimages-a.akamaihd.net/ugc/27364031623541564/5DD8D16A5C7043D64F22B8D78105184E41931BEE/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false")
	:SetOnActivate(function(pl)
        pl:PS2_AddPremiumPoints(10000)
    end)
IGS("Говорилка (ТТС) на месяц", "tts_na_mesyac")
	:SetPrice(90)
	:SetCategory("Прочее")
	:SetDescription("Озвучивает собщения ваши сообщения всем игрокам по близости")
	:SetTerm(30)
	:SetIcon("https://steamuserimages-a.akamaihd.net/ugc/2471994397493557443/8D896BA77E4E28C16D7DC253FF85D8F8E7C0859C/?imw=268&imh=268&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true")
IGS("Говорилка (ТТС) навсегда", "tts_navsegda")
	:SetPrice(275)
	:SetCategory("Прочее")
	:SetDescription("Озвучивает собщения ваши сообщения всем игрокам по близости")
	:SetPerma()
	:SetIcon("https://steamuserimages-a.akamaihd.net/ugc/2471994397493557443/8D896BA77E4E28C16D7DC253FF85D8F8E7C0859C/?imw=268&imh=268&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true")
	:SetCanSee(false)
--[[-------------------------------------------------------------------------
	Гмод тулы
---------------------------------------------------------------------------]]
--[[IGS("Доступ к Веревке","verevka_na_mesyac"):SetTool("rope")
	:SetPrice(50)
	:SetTerm(30) -- 30 дней
	:SetDescription("Для соединения двух объектов или написания матов на стенах :)")

IGS("Доступ к Лебёдке","lebedka_navsegda"):SetTool("winch")
	:SetPrice(100)
	:SetPerma()
	:SetDescription("Лебёдка это веревка, способная становиться короче или длиннее")--]]


--[[-------------------------------------------------------------------------
	"Паки" предметов и скрытые предметы
	В примере ниже мы создаем скрытый предмет "Аптечка", который НЕ отображается в магазине
	и видимый предмет "Набор аптечек". После активации набора игрок получит в инвентарь 5 аптечек
	Это полезно, если вы не хотите продавать по 1 аптечке или хотите делать скидку за опт
---------------------------------------------------------------------------]]
--[[local HEAL = IGS("Аптечка", "heal_10hp", 0)
	:SetDescription("Добавляет вам 10 хп")
	:SetStackable()
	:SetCanSee(false) -- скрытый предмет (не отображается в магазине)
	:SetOnActivate(function(pl) pl:SetHealth(pl:Health() + 10) end)

IGS("Набор аптечек", "heal_x5", 20)
	:SetDescription("Вы получите в инвентарь 5 аптечек")
	:SetStackable()
	:SetItems({HEAL, HEAL, HEAL, HEAL, HEAL}) -- вы можете использовать и разные предметы --]]



-- Дальше примеры, которые нужно раскомментировать, чтобы работали (убрать "--[[" в начале)

--[[-------------------------------------------------------------------------
	Игровая валюта для DarkRP
	Здесь SetTerm не обязателен, т.к. срок ни на что не влияет
	Обратите внимание, цена указана третьим параметром. Так тоже можно
---------------------------------------------------------------------------]]
-- IGS("100 тысяч", "100k_deneg", 200):SetDarkRPMoney(100000)
-- IGS("500 тысяч", "500k_deneg", 450):SetDarkRPMoney(500000)



--[[-------------------------------------------------------------------------
	Доступ к DarkRP профессиям
---------------------------------------------------------------------------]]
--[[
IGS("Бомж", "team_hobo")
	:SetDarkRPTeams("hobo") -- одна тима (command)
	:SetCategory("Доступ к работам")
	:SetDescription("Вы сможете месяц работать бомжом :)")
	:SetPrice(50)
	:SetTerm(30)

IGS("Продвинутые воры", "team_thieves")
	:SetDarkRPTeams("advthief", "ultrathief") -- можно несколько
	:SetCategory("Доступ к работам")
	:SetDescription("Вам станут доступны работы продвинутого и ультравора")
	:SetPrice(200)
	:SetTerm(30)
--]]



--[[-------------------------------------------------------------------------
	Донат группы ULX
---------------------------------------------------------------------------]]
IGS("SetModel на месяц", "setmodel_na_mesyac"):SetULXCommandAccess("ulx setmodel")
	:SetPrice(85)
	:SetTerm(30) -- 30 дней
	:SetIcon("https://steamuserimages-a.akamaihd.net/ugc/900978456166627272/A0E3C5CF198A012943FAA782F55EA6BC584F544C/?imw=268&imh=268&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true")
	:SetCategory("Команды")
	:SetDescription("С данным донатом, Вы получите доступ к команде !setmodel и продлите жизнь сервера! Для получения доступа к моделям hg_playermodels")
IGS("SetModel навсегда", "setmodel_navsegda"):SetULXCommandAccess("ulx setmodel")
	:SetPrice(275)
	:SetPerma()
	:SetIcon("https://steamuserimages-a.akamaihd.net/ugc/900978456166627272/A0E3C5CF198A012943FAA782F55EA6BC584F544C/?imw=268&imh=268&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true")
	:SetCategory("Команды")
	:SetDescription("С данным донатом, Вы получите доступ к команде !setmodel и продлите жизнь сервера! Для получения доступа к моделям hg_playermodels")
	:SetCanSee(false)

--[[IGS("PREMIUM навсегда", "premium_navsegda"):SetULXGroup("premium")
	:SetPrice(400)
	:SetPerma() -- навсегда
	:SetCategory("Группы")
	:SetDescription("А с этой покупкой еще офигеннее, чем с покупкой VIP")
--]]




--[[-------------------------------------------------------------------------
	Другое
---------------------------------------------------------------------------]]
-- Продажа говорилки        : https://forum.gm-donate.net/t/1059
-- Продажа моделек игрока   : https://forum.gm-donate.net/t/1003
-- Увеличение лимита пропов : https://forum.gm-donate.net/t/481/2
-- Тестовая VIP и тд        : https://forum.gm-donate.net/t/369
-- Доп. броня при спавне    : https://forum.gm-donate.net/t/395/10
-- Различные купоны         : https://forum.gm-donate.net/t/14
-- Изменения цветов меню    : https://forum.gm-donate.net/t/2500
-- Для разработчиков        : https://forum.gm-donate.net/t/168
-- Проблемы ваши и игроков  : https://forum.gm-donate.net/t/3305
-- Отображать при условии   : https://forum.gm-donate.net/t/6060
-- Динамичная цена итема    : https://forum.gm-donate.net/t/2125
-- Прочие ништяки: https://forum.gm-donate.net/tag/рекомендуем
