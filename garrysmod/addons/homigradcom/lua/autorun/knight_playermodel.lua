if SERVER then
	AddCSLuaFile()
	resource.AddFile("models/player/knight.mdl")
	resource.AddFile("materials/models/knight/knight.vmt")
end

local function AddPlayerModel( name, model )

	list.Set( "PlayerOptionsModel", name, model )
	player_manager.AddValidModel( name, model )
	
end

AddPlayerModel( "knight", "models/player/knight.mdl" )