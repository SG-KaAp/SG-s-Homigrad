local Category = "Vinrax NPCS"
local NPC = {
		 		Name = "Billy Herrington", 
				Class = "npc_citizen",
				KeyValues = { citizentype = 4 },
				Model = "models/vinrax/player/Billy_Herrington.mdl",
				Category = Category	
		}
list.Set( "NPC", "npc_billy_friend", NPC )

local Category = "Vinrax NPCS"

local NPC = {
		 		Name = "Billy Herrington Hostile", 
				Class = "npc_combine_s",
				Model = "models/vinrax/player/Billy_Herrington.mdl",
				Category = Category	
		}
list.Set( "NPC", "npc_billy_hostile", NPC )

