local function AddPlayerModel( name, model )

	list.Set( "PlayerOptionsModel", name, model )
	player_manager.AddValidModel( name, model )
	
end


AddPlayerModel( "Battledroid", 					"models/Player/SGG/Starwars/battledroid.mdl" )
AddPlayerModel( "Battledroid Commander",			"models/Player/SGG/Starwars/battledroid_commander.mdl" )
AddPlayerModel( "Battledroid (Geonosis)", 		"models/Player/SGG/Starwars/battledroid_geo.mdl" )
AddPlayerModel( "Battledroid Pilot", 				"models/Player/SGG/Starwars/battledroid_pilot.mdl" )
AddPlayerModel( "Battledroid Security", 			"models/Player/SGG/Starwars/battledroid_security.mdl" )