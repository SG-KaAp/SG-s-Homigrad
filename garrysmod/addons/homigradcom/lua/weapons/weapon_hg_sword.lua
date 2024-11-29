if engine.ActiveGamemode() == "homigradcom" then
SWEP.Base = "weapon_hg_melee_base"

SWEP.PrintName = "Металический меч"
SWEP.Author = "SG_KaAp"
SWEP.Category = "SG's Homigrad | Ближний Бой"
SWEP.Instructions = "Меч, которыми древние русы жёстко искореняли ящеров."

SWEP.Spawnable= true
SWEP.AdminSpawnable= true
SWEP.AdminOnly = false

SWEP.ViewModelFOV = 60
SWEP.ViewModel = "models/morrowind/iron/longsword/v_iron_longsword.mdl"
SWEP.WorldModel = "models/morrowind/iron/longsword/w_iron_longsword.mdl"
SWEP.ViewModelFlip = false

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Slot = 1
SWEP.SlotPos = 2

SWEP.UseHands = true

---SWEP.HoldType = "knife"

SWEP.FiresUnderwater = false

SWEP.DrawCrosshair = false

SWEP.DrawAmmo = true

SWEP.Primary.Damage = 20
SWEP.Primary.Ammo = "none"
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = true
SWEP.Primary.Recoil = 0.5
SWEP.Primary.Delay = 0.5
SWEP.Primary.Force = 100

SWEP.Secondary.ClipSize = 0
SWEP.Secondary.DefaultClip = 0
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.DrawSound = "longswords/morrowind_longsword_deploy.wav"
SWEP.HitSound = "longswords/morrowind_longsword_hit.wav"
SWEP.FlashHitSound = "longswords/morrowind_longsword_hitwall.wav"
SWEP.ShouldDecal = true
SWEP.HoldTypeWep = "melee"
SWEP.DamageType = DMG_CLUB
end