function disable(name) -- Dont draw the hl2 hud
	ply = LocalPlayer()
	
	if IsValid(ply) and ply:Alive() then
		wep = ply:GetActiveWeapon()
		if IsValid(wep) then
			if wep.hideammo then
				if name == "CHudAmmo" or name == "CHudSecondaryAmmo" then 
					return false 
				end
			end
		end
	end
end
hook.Add("HUDShouldDraw", "disable", disable)