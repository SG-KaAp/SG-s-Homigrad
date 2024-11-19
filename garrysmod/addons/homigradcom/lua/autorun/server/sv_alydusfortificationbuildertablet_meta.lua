--[[
 - Fortification Builder Tablet
 - 
 - /lua/autorun/server/sv_alydusfortificationbuildertablet_meta.lua
 -
 - Primary meta functions utilised by /lua/weapons/alydus_fortificationbuildertablet.lua
 - 
 - Feel free to modify, but please leave appropriate credit.
 - Do not reupload this (modified or original) to this workshop, however you may ruin modified versions on your servers.
 - Assets included for fortifications Alydus does not own the rights to, so do as you wish, but its suggested you also leave appropriate credit.
 -
 - Thanks so much for the support with the addon since it's creation in 2018.
 -
 --]]

 local ply = FindMetaTable("Player")

--[[
 -
 - Player:CanBuildAlydusFortification
 -
 - Determines if the player can build a fortification
 -
 --]]
 function ply:CanBuildAlydusFortification()
    -- Check if player is valid, a player and alive
    if !IsValid(self) or !self:IsPlayer() or !self:Alive() then
        return false
    end

    -- Check if player has an active weapon and it is the fortification builder tablet
    if !IsValid(self:GetActiveWeapon()) or self:GetActiveWeapon():GetClass() != "alydus_fortificationbuildertablet" then
        return false
    end

    -- Check if player is crouching or moving
    if self:Crouching() or self:GetVelocity():Length() > 25 then
        return false
    end

    -- Check if the player is too far away from potentially placing a fortification
    if self:GetPos():DistToSqr(self:GetEyeTrace().HitPos) > (250 ^ 2) then
        return false
    end

    -- Check if the gamemode is sandbox derived and the fortification limit has been reached
    if GAMEMODE.IsSandboxDerived and self:GetCount("fortifications") > GetConVar("sbox_maxfortifications"):GetInt() then
        self:LimitHit("fortifications")
        
        return false
    end

    -- Check if the developer build hook returns false
    if hook.Call("Alydus.FortificationBuilderTablet.CanBuildFortification", self) == false then
        return false
    end

    -- Check if the tablet is in bootup
    if self:GetActiveWeapon():GetNWBool("tabletBootup", false) == true then
        return false
    end

    return true
 end

 --[[
 -
 - Player:CanRemoveAlydusFortification
 -
 - Determines if the player can remove a fortification
 -
 --]]
 function ply:CanRemoveAlydusFortification()
    -- Check if player is valid, a player and alive
    if !IsValid(self) or !self:IsPlayer() or !self:Alive() then
        return false
    end

    -- Check if player has an active weapon and it is the fortification builder tablet
    if !IsValid(self:GetActiveWeapon()) or self:GetActiveWeapon():GetClass() != "alydus_fortificationbuildertablet" then
        return false
    end

    -- Check if the placed fortification the player is looking at is owned by the player
    if self:GetEyeTrace().Entity.isPlayerPlacedFortification != self then
        return false
    end

    return true
 end

--[[
 -
 - Player:CanSelectNextAlydusFortification
 -
 - Determines if the player can select the next fortification
 -
 --]]
 function ply:CanSelectNextAlydusFortification()
    -- Check if player is valid, a player and alive
    if !IsValid(self) or !self:IsPlayer() or !self:Alive() then
        return false
    end

    -- Check if player is crouching or moving
    if self:Crouching() or self:GetVelocity():Length() > 25 then
        return false
    end

    -- Check if the player is too far away from potentially placing a fortification
    if self:GetPos():DistToSqr(self:GetEyeTrace().HitPos) > (250 ^ 2) then
        return false
    end

    return true
 end

--[[
 -
 - Player:CanSelectPreviousAlydusFortification
 -
 - Determines if the player can select the previous fortification
 -
 --]]
 function ply:CanSelectPreviousAlydusFortification()
    -- Check if player is valid, a player and alive
    if !IsValid(self) or !self:IsPlayer() or !self:Alive() then
        return false
    end

    -- Check if player is crouching or moving
    if self:Crouching() or self:GetVelocity():Length() > 25 then
        return false
    end

    -- Check if the player is too far away from potentially placing a fortification
    if self:GetPos():DistToSqr(self:GetEyeTrace().HitPos) > (250 ^ 2) then
        return false
    end

    return true
 end