list.Set( "PlayerOptionsModel", "Megamind", "models/player/megamind/megamind.mdl" )
player_manager.AddValidModel( "Megamind", "models/player/megamind/megamind.mdl" )

--here is NPC code added by EatThatPie:
local Category = "Megamind"

local NPC = {
	Name = "Megamind (Start of Movie)",
	Class = "npc_combine",
	Category = Category,
	Model = "models/player/megamind/megamind.mdl",
}
list.Set( "NPC", "megamind_evil", NPC )


local Category = "Megamind"

local NPC = {
	Name = "Megamind (End of Movie)",
	Class = "npc_citizen",
	Category = Category,
	Model = "models/player/megamind/megamind.mdl",
	KeyValues = { citizentype = CT_UNIQUE },
}
list.Set( "NPC", "megamind_npc", NPC )