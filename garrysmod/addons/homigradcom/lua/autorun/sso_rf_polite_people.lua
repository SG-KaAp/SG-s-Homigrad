local function AddPlayerModel( name, model )

	list.Set( "PlayerOptionsModel", name, model )
	player_manager.AddValidModel( name, model )
	
end

AddPlayerModel( "Вежливые Люди", 			         "models/Knyaje Pack/SSO_PolitePeople/SSO_PolitePeople.mdl" )