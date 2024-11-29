player_manager.AddValidModel( "AstolfoE", "models/CyanBlue/Fate_Extella_Link/Astolfo/Astolfo.mdl" );


local Category = "Fate Extella"

local NPC =
{
	Name = "Astolfo",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/CyanBlue/Fate_Extella_Link/Astolfo/NPC/Astolfo.mdl",
	Category = Category
}

list.Set( "NPC", "npc_astolfo_extella", NPC )

---------------------------------------------------
