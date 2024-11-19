-- [[ CREATED BY ZOMBIE EXTINGUISHER ]]

/*
	This file is used to add support to other addons
*/

// MAC's Simple NPCs
if MCS ~= nil then
	MCS.AddonList["Easy Skins"] = {
		["path"] = "lua/autorun/z_easyskins_setup.lua",
		["function"] = function()
			CL_EASYSKINS.ToggleMenu(false,true)
		end,
		["function_sv"] = nil,
		["enabled"] = false,
	}
end