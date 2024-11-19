--[[
 - Fortification Builder Tablet
 - 
 - /lua/autorun/client/cl_alydusfortificationbuildertablet_meta.lua
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
 - Player:ShouldDrawAlydusFortification
 -
 - Determines if the player should be drawing a fortification
 -
 --]]
 function ply:CanDrawAlydusFortification()
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

    -- Check if player has an active weapon and it is the fortification builder tablet
    if !IsValid(self:GetActiveWeapon()) or self:GetActiveWeapon():GetClass() != "alydus_fortificationbuildertablet" then
        return false
    end

    -- Check if tablet is booting up
    if self:GetActiveWeapon():GetIsBootingUp() == true then
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