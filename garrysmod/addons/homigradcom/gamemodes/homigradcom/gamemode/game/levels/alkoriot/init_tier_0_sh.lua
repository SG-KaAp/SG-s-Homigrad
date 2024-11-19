table.insert(LevelList,"alkoriot")
alkoriot = {}
alkoriot.Name = "Бухие против ментов"

alkoriot.red = {"Полиция",Color(55,55,150),
	weapons = {"weapon_hands","weapon_police_bat","med_band_big","med_band_small","weapon_taser","weapon_handcuffs","weapon_radio","shina"},
	main_weapon = {"weapon_per4ik","medkit","painkiller","weapon_hg_flashbang","weapon_per4ik","medkit","painkiller","weapon_beanbag"},
	secondary_weapon = {""},
	models = {"models/monolithservers/mpd/male_04.mdl","models/monolithservers/mpd/male_03.mdl","models/monolithservers/mpd/male_05.mdl","models/monolithservers/mpd/male_02.mdl"}
}


alkoriot.blue = {"Бухие",Color(75,45,45),
	weapons = {"weapon_hands","med_band_small"},
	main_weapon = {"weapon_molotok","med_band_big","med_band_small","weapon_hg_molotov","weapon_per4ik","weapon_molotok","med_band_big","med_band_small","weapon_per4ik","shina","food_beer"},
	secondary_weapon = {"weapon_hg_metalbat", "weapon_bat","weapon_pipe"},
	models = {"models/player/Group01/male_04.mdl","models/player/Group01/male_01.mdl","models/player/Group01/male_02.mdl","models/player/Group01/male_08.mdl"}
}

alkoriot.teamEncoder = {
	[1] = "red",
	[2] = "blue"
}

function alkoriot.StartRound()
	game.CleanUpMap(false)

	team.SetColor(1,alkoriot.red[2])
	team.SetColor(2,alkoriot.blue[2])

	if CLIENT then

		alkoriot.StartRoundCL()
		return
	end

	alkoriot.StartRoundSV()
end

alkoriot.SupportCenter = true