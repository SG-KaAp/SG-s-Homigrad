AddCSLuaFile("shared.lua")
include("shared.lua")

local eda = {
    "food_spongebob_home",
    "food_lays",
    "food_monster",
	"food_fishcan"
}

--[[local bita = {
    "weapon_bat",
    "weapon_hg_kitknife",
    "weapon_hg_crowbar",
    "weapon_hg_metalbat",
    "weapon_t"
}--]]
local weaponscommon = {
    "weapom_handcuffs",
	"weapon_binokle",
	"weapon_molotok",
	"ent_drop_flashlight",

	"weapon_knife",
	"weapon_pipe",
	
	"med_band_small",
	"med_band_big",
	"blood_bag"
}

local weaponsuncommon = {
	"weapon_glock18",
	"weapon_per4ik",

	"weapon_hg_crowbar",
	"weapon_hg_fubar",
	"weapon_bat",
	"weapon_hg_metalbat",
	"weapon_hg_hatchet",

	"medkit"
}

local weaponsrare = {
	"weapon_beretta",
	"weapon_remington870",
	"weapon_glock",
	"weapon_t",
	"weapon_hg_molotov",

	"weapon_hg_sleagehammer",
	"weapon_hg_fireaxe",
}

local weaponsveryrare = {
	"weapon_m3super",
}

local weaponslegendary = {
	"weapon_xm1014",
	"weapon_ar15",
	"weapon_civil_famas"
}
local armor = {"ent_jack_gmod_ezarmor_mtorso",
	"ent_jack_gmod_ezarmor_mhead",
    "ent_jack_gmod_ezarmor_gasmask",
	"ent_jack_gmod_ezarmor_mltorso",
    "ent_jack_gmod_ezarmor_respirator",
	"ent_jack_gmod_ezarmor_lhead"
}

local ammos = {
	"ent_ammo_.44magnum",
	"ent_ammo_12/70gauge",
	"ent_ammo_762x39mm",
	"ent_ammo_556x45mm",
	"ent_ammo_9х19mm"
}

util.AddNetworkString("inventory")
util.AddNetworkString("ply_take_item")
util.AddNetworkString("update_inventory")

function ENT:Initialize()
    self:SetModel("models/kali/props/cases/hard case a.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:SetUseType(SIMPLE_USE)
    
    local phys = self:GetPhysicsObject()
    if (phys:IsValid()) then
        phys:Wake()
    end
    
    -- Initialize the Info table with Weapons and Ammo subtables
    self.Info = {
        Weapons = {},
        Ammo = {}
    }
    
    local random = math.random(1,100) 
    local randomWeapon = eda[math.random(1, #eda)]
    self.Info.Weapons[randomWeapon] = {
        Clip1 =  -2
    }
    print(random)
    if random < 10 then
        local randomWeaponss = weaponslegendary[math.random(1, #weaponslegendary)]
        local weaponTable = weapons.GetStored(randomWeaponss)
        self.Info.Weapons[randomWeaponss] = {Clip1 = weaponTable.Primary.ClipSize}
    elseif random < 20 then
        local randomWeaponss = weaponsveryrare[math.random(1, #weaponsveryrare)]
        local weaponTable = weapons.GetStored(randomWeaponss)
        self.Info.Weapons[randomWeaponss] = {Clip1 = weaponTable.Primary.ClipSize}
    elseif random < 45 then
        local randomWeaponss = weaponsrare[math.random(1, #weaponsrare)]
        local weaponTable = weapons.GetStored(randomWeaponss)
        self.Info.Weapons[randomWeaponss] = {Clip1 = weaponTable.Primary.ClipSize}
    elseif random < 65 then
        local randomWeaponss = weaponsuncommon[math.random(1, #weaponsuncommon)]
        local weaponTable = weapons.GetStored(randomWeaponss)
        self.Info.Weapons[randomWeaponss] = {Clip1 = weaponTable.Primary.ClipSize}
    elseif random < 80 then
        local randomWeaponss = weaponscommon[math.random(1, #weaponscommon)]
        local weaponTable = weapons.GetStored(randomWeaponss)
        self.Info.Weapons[randomWeaponss] = {Clip1 = weaponTable.Primary.ClipSize}
    end
    if random < 45 then
        local randomWeaponss = armor[math.random(1, #weaponsuncommon)]
        self.Info.Weapons[randomWeaponss] = {}
    end
end

function ENT:Use(activator, caller)
    if activator:IsPlayer() then
        if self.Info then
            net.Start("inventory")
            net.WriteEntity(self)
			net.WriteTable(self.Info.Weapons)
            --net.WriteTable(self.Info.Weapons:GetPrimaryAmmoType())
            net.Send(activator)
        end
    end
end
