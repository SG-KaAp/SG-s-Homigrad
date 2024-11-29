local function AddPlayerModel( name, model )

    list.Set( "PlayerOptionsModel", name, model )
    player_manager.AddValidModel( name, model )
end

AddPlayerModel( "Minion SVO", "models/player/minyon.mdl" )