table.insert(LevelList,"lizardsmustdie")
lizardsmustdie = {}
lizardsmustdie.Name = "Русы против Ящеров"

lizardsmustdie.red = {"РУСЫ",Color(55,55,150),
	weapons = {"weapon_hands","med_band_big","med_band_small","weapon_radio","shina","food_baikalwater"},
	main_weapon = {"weapon_hg_sword"},
	secondary_weapon = {""},
	models = {"models/player/knight.mdl"}
}


lizardsmustdie.blue = {"ЯЩЕРЫ",Color(75,45,45),
	weapons = {"weapon_hands","med_band_big","med_band_small","weapon_radio","shina","food_beer"},
	main_weapon = {"weapon_hg_sword"},
	secondary_weapon = {},
	models = {"models/mailer/characters/tesv_argonianfemale.mdl","models/mailer/characters/tesv_maleargonian.mdl"}
}

lizardsmustdie.teamEncoder = {
	[1] = "red",
	[2] = "blue"
}

function lizardsmustdie.StartRound()
	game.CleanUpMap(false)

	team.SetColor(1,lizardsmustdie.red[2])
	team.SetColor(2,lizardsmustdie.blue[2])

	if CLIENT then

		lizardsmustdie.StartRoundCL()
		return
	end

	lizardsmustdie.StartRoundSV()
end

lizardsmustdie.SupportCenter = true