table.insert(LevelList,"ddos")
ddos = {}
ddos.Name = "Дудос Homigrad.com"
ddos.points = {}

ddos.WinPoints = ddos.WinPoints or {}
ddos.WinPoints[1] = ddos.WinPoints[1] or 0
ddos.WinPoints[2] = ddos.WinPoints[2] or 0

ddos.red = {"Частная Гмодерская Компания SadSalat",Color(176,0,0),
	weapons = {"megamedkit","weapon_binokle","weapon_hands","weapon_hg_hatchet","med_band_small","med_band_big","med_band_small","painkiller","weapon_handcuffs","weapon_radio","shina"},
	main_weapon = {"weapon_galilsar", "weapon_mp5", "weapon_m3super","weapon_slb_g3sg1","weapon_slb_sg550","weapon_slb_awp" },
	secondary_weapon = {"weapon_beretta","weapon_fiveseven","weapon_beretta"},
	models = {"models/player/minyon.mdl"}
}

ddos.blue = {"Пидорасы Быстрого Реагирования Шарика",Color(79,59,187),
	weapons = {"megamedkit","weapon_binokle","weapon_hg_hatchet","weapon_hands","med_band_big","med_band_small","medkit","painkiller","weapon_handcuffs","weapon_radio","shina", "weapon_jahidka"},
	main_weapon = {"weapon_m4a1","weapon_mp7","weapon_galil","weapon_slb_awp","weapon_slb_sg552","weapon_slb_aug","weapon_slb_scout" },
	secondary_weapon = {"weapon_hk_usp", "weapon_deagle"},
	models = {"models/player/kuma/taliban_bomber.mdl"}
}

ddos.teamEncoder = {
	[1] = "red",
	[2] = "blue"
}

function ddos.StartRound()
    local ply = player.GetAll()
	game.CleanUpMap(false)
    ddos.points = {}
    if !file.Read( "homigrad/maps/controlpoint/"..game.GetMap()..".txt", "DATA" ) and SERVER then
        print("Скажите админу чтоб тот создал !point control_point или хуярьтесь без Точек Захвата.") 
        PrintMessage(HUD_PRINTCENTER, "Скажите админу чтоб тот создал !point control_point или хуярьтесь без Точек Захвата.")
    end

    ddos.LastWave = CurTime()

    ddos.WinPoints = {}
    ddos.WinPoints[1] = 0
    ddos.WinPoints[2] = 0

	team.SetColor(1,red)
	team.SetColor(2,blue)

    for i, point in pairs(SpawnPointsList.controlpoint[3]) do
        SetGlobalInt(i .. "PointProgress", 0)
        SetGlobalInt(i .. "PointCapture", 0)
        ddos.points[i] = {}
    end

    SetGlobalInt("CP_respawntime", CurTime())

	if CLIENT then return end

    timer.Create("CP_ThinkAboutPoints", 1, 0, function() --подумай о точках... засунул в таймер для оптимизации, ибо там каждый тик игроки в сфере подглядываются, ну и в целом для удобства
        ddos.PointsThink()
    end)

    ddos.StartRoundSV()
end

--тот кто это кодил нужно убить нахуй
ddos.RoundRandomDefalut = 1
ddos.SupportCenter = true

/*function ddos.StartRound()
	game.CleanUpMap(false)

	team.SetColor(1,red)
	team.SetColor(2,blue)

	if CLIENT then
		ddos.StartRoundCL()
		return
	end

	ddos.StartRoundSV()
end
ddos.RoundRandomDefalut = 2
ddos.SupportCenter = false*/