if SERVER then
	AddCSLuaFile()
end

player_manager.AddValidModel("Savini Jason", "models/models/konnie/savini/savini.mdl")
player_manager.AddValidHands( "Savini Jason", "models/weapons/arms/v_arms_savini.mdl", 0, "00000000" )

local Category = "Friday the 13th Game"

local function AddNPC( t, class )
	list.Set( "NPC", class or t.Class, t )
end

AddNPC( {
	Name = "Savini Jason",
	Class = "npc_citizen",
	Category = Category,
	Model = "models/models/konnie/savini/savini_f.mdl",
	KeyValues = { citizentype = CT_UNIQUE, SquadName = "F13SJF" }
}, "npc_jason_savini_f" )