game.AddParticles("particles/impact_fx.pcf")

PrecacheParticleSystem("impact_concrete")
PrecacheParticleSystem("impact_metal")
PrecacheParticleSystem("impact_computer")
PrecacheParticleSystem("impact_dirt")
PrecacheParticleSystem("impact_wood")
PrecacheParticleSystem("impact_glass")
PrecacheParticleSystem("impact_antlion")

---------------------------------------------------------------------------------------------------------------------------=#
if CLIENT then

    CreateConVar("zippyimpacts_enable", "1", FCVAR_ARCHIVE)
    CreateConVar("zippyimpacts_scalemult", "1", FCVAR_ARCHIVE)
    CreateConVar("zippyimpacts_scale_ammotype", "1", FCVAR_ARCHIVE)
    CreateConVar("zippyimpacts_dynlight_intensity", "1", FCVAR_ARCHIVE)
    CreateConVar("zippyimpacts_flesh", "1", FCVAR_ARCHIVE)

    local impact_effects = {
        [MAT_CONCRETE] = "zippy_impact_concrete",
        [MAT_TILE] = "zippy_impact_concrete",
        [MAT_PLASTIC] = "zippy_impact_concrete",
        [MAT_SAND] = "zippy_impact_sand",
        [MAT_SNOW] = "zippy_impact_dirt",
        [MAT_DIRT] = "zippy_impact_dirt",
        [MAT_GRASS] = "zippy_impact_grass",
        [MAT_GLASS] = "zippy_impact_glass",
        [MAT_WOOD] = "zippy_impact_wood",
        [MAT_FLESH] = "zippy_impact_flesh",
        [MAT_BLOODYFLESH] = "zippy_impact_alienflesh",
        [MAT_ALIENFLESH] = "zippy_impact_alienflesh",
        [MAT_ANTLION] = "zippy_impact_antlion",
        [MAT_METAL] = "zippy_impact_metal",
        [MAT_COMPUTER] = "zippy_impact_metal",
        [MAT_VENT] = "zippy_impact_metal",
    }

    local fleshImpacts = {
        [MAT_FLESH] = true,
        [MAT_BLOODYFLESH] = true,
        [MAT_ALIENFLESH] = true,
    }

    local impact_intensity_multipliers = {
        [1] = 1.66, -- Rifle
        [3] = 1, -- Pistol
        [4] = 1.33, -- SMG
        [5] = 2, -- .357
        [7] = 1.5, -- Shotgun
        [13] = 2.33, -- Sniper
        [14] = 2.33, -- Sniper
    }

    net.Receive("ZippyImpactEffect", function()

        if !GetConVar("zippyimpacts_enable"):GetBool() then
            if GetConVar("cl_new_impact_effects"):GetBool() then
                RunConsoleCommand("cl_new_impact_effects","0")
            end
            return
        elseif !GetConVar("cl_new_impact_effects"):GetBool() then 
            RunConsoleCommand("cl_new_impact_effects","1")
        end

        local tr = net.ReadTable()
        local ent = net.ReadEntity()

        local effect = impact_effects[tr.MatType]

        if !effect then
            return
        end

        if fleshImpacts[tr.MatType] && !GetConVar("zippyimpacts_flesh"):GetBool() then
            return
        end

        local effect_intensity_mult = 1.5
        if GetConVar("zippyimpacts_scale_ammotype"):GetBool() then
            if ent:IsWeapon() then
                effect_intensity_mult = impact_intensity_multipliers[ent:GetPrimaryAmmoType()]
            elseif (ent:IsNPC() or ent:IsPlayer()) && IsValid(ent:GetActiveWeapon()) then
                effect_intensity_mult = impact_intensity_multipliers[ent:GetActiveWeapon():GetPrimaryAmmoType()]
            end
        end

        if effect_intensity_mult then -- It can turn nil somehow??
            effect_intensity_mult = effect_intensity_mult*GetConVar("zippyimpacts_scalemult"):GetFloat()
        end

        local effectdata = EffectData()
        effectdata:SetStart(tr.HitPos)
        effectdata:SetMagnitude(effect_intensity_mult or GetConVar("zippyimpacts_scalemult"):GetFloat())
        effectdata:SetNormal(tr.HitNormal)
        util.Effect(effect, effectdata, true, true)

    end)

    hook.Add("PopulateToolMenu", "PopulateToolMenu_ZippyImpacts", function() spawnmenu.AddToolMenuOption("Options", "Effects", "Bullet Impacts", "Bullet Impacts", "", "", function(panel)

        panel:CheckBox("Enable", "zippyimpacts_enable")
        panel:CheckBox("Scale With Ammo Type", "zippyimpacts_scale_ammotype")
        panel:CheckBox("Flesh Impacts", "zippyimpacts_flesh")
        panel:NumSlider("Scale", "zippyimpacts_scalemult", 0.5, 1.5, 2)
        panel:NumSlider("Dynamic Light Intensity Multiplier", "zippyimpacts_dynlight_intensity", 0, 2, 2)

    end) end)

end
---------------------------------------------------------------------------------------------------------------------------=#
if SERVER then

    util.AddNetworkString("ZippyImpactEffect")

    local grabbing_backup_data = false
    hook.Add("EntityFireBullets", "EnhancedBulletReponse_EntityFireBullets", function(ent, data, ...)
        local data_backup = data
        if grabbing_backup_data then return end

        grabbing_backup_data = true
        hook.Run("EntityFireBullets", ent, data, ...)
        grabbing_backup_data = false

        data = data_backup

        local callback = data.Callback
        data.Callback = function(callback_ent, tr, dmginfo, ...)
            if callback then
                callback(callback_ent, tr, dmginfo, ...)
            end

            if bit.band( util.PointContents(tr.HitPos), CONTENTS_WATER ) == CONTENTS_WATER then
                return
            end

            net.Start("ZippyImpactEffect")
            net.WriteTable(tr)
            net.WriteEntity(ent)
            net.SendPVS(tr.HitPos)
        end

        return true

    end)
end
---------------------------------------------------------------------------------------------------------------------------=#