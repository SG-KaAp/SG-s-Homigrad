table.insert(LevelList,"tdm")
tdm = {}
tdm.Name = "Homigrads conflict| TeamDeathMatch"

local models = {}

for i = 1,9 do table.insert(models,"models/player/group01/male_0" .. i .. ".mdl") end

for i = 1,6 do table.insert(models,"models/player/group01/female_0" .. i .. ".mdl") end

--table.insert(models,"models/player/group02/male_02.mdl")
--table.insert(models,"models/player/group02/male_06.mdl")
--table.insert(models,"models/player/group02/male_08.mdl")

--for i = 1,9 do table.insert(models,"models/player/group01/male_0" .. i .. ".mdl") end

tdm.models = models
tdm.red = {
	"Red",Color(64, 0, 0,),
	weapons = {"weapon_binokle","weapon_radio","weapon_hg_sleagehammer","weapon_hands","med_band_big","med_band_small","medkit","painkiller","shina"},
	main_weapon = {"weapon_ak74u","weapon_akm","weapon_remington870","weapon_galil","weapon_rpk","weapon_galilsar","weapon_mp40","weapon_slb_awp","weapon_m249" },
	secondary_weapon = {"weapon_p220","weapon_deagle","weapon_glock"},
	models = models
}


tdm.blue = {
	"Blue",Color(36, 38, 84),
	weapons = {"weapon_binokle","weapon_radio","weapon_hands","weapon_kabar","med_band_big","med_band_small","medkit","painkiller","weapon_handcuffs","weapon_taser","shina"},
	main_weapon = {"weapon_mk18","weapon_m4a1","weapon_m3super","weapon_mp7","weapon_xm1014","weapon_fal","weapon_galilsar","weapon_m249","weapon_mp40","weapon_slb_awp","weapon_slb_aug" },
	secondary_weapon = {"weapon_beretta","weapon_fiveseven","weapon_hk_usp"},
	models = models
}

tdm.teamEncoder = {
	[1] = "red",
	[2] = "blue"
}

function tdm.StartRound()
	game.CleanUpMap(false)

	team.SetColor(1,red)
	team.SetColor(2,blue)

	if CLIENT then return end

	tdm.StartRoundSV()
end

if SERVER then return end

local colorRed = Color(255,0,0)

function tdm.GetTeamName(ply)
	local game = TableRound()
	local team = game.teamEncoder[ply:Team()]

	if team then
		team = game[team]

		return team[1],team[2]
	end
end

function tdm.ChangeValue(oldName,value)
	local oldValue = tdm[oldName]

	if oldValue ~= value then
		oldValue = value

		return true
	end
end

function tdm.AccurceTime(time)
	return string.FormattedTime(time,"%02i:%02i")
end
