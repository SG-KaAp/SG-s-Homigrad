table.insert(LevelList,"swat")
swat = {}
swat.Name = "S.W.A.T"

swat.red = {"Бандиты",Color(255,55,55),
    weapons = {"weapon_radio","weapon_gurkha","weapon_hands","med_band_big","med_band_small","medkit","painkiller"},
    main_weapon = {"weapon_m3super","weapon_remington870","weapon_xm1014"},
    secondary_weapon = {"weapon_p220","weapon_deagle","weapon_glock"},
    models = tdm.models
}

swat.blue = {"S.W.A.T",Color(55,55,255),
    weapons = {"weapon_radio","weapon_hands","weapon_kabar","med_band_big","med_band_small","medkit","painkiller","weapon_hg_f1","weapon_handcuffs","weapon_taser","weapon_hg_flashbang"},
    main_weapon = {"weapon_mk18","weapon_m4a1","weapon_m3super","weapon_mp7","weapon_xm1014","weapon_fal","weapon_galilsar","weapon_m249","weapon_mp5","weapon_mp40"},
    secondary_weapon = {"weapon_beretta","weapon_fiveseven","weapon_hk_usp"},
    models = tdm.models
}

swat.teamEncoder = {
    [1] = "red",
    [2] = "blue",
}

function swat.StartRound(data)
	team.SetColor(1,swat.red[2])
	team.SetColor(2,swat.blue[2])

	game.CleanUpMap(false)

    if CLIENT then
		roundTimeLoot = data.roundTimeLoot

		return
	end

    return swat.StartRoundSV()
end

swat.SupportCenter = true
