SWEP.Base                   = "weapon_base"

SWEP.PrintName 				= "Дверная растяжка"
SWEP.Author 				= "SG's Homigrad"
SWEP.Instructions			= "С помощью нитки и гранаты F1 вам удалось сделать самодельную двурную растяжку, которая при открывании двери взрывается. ЛКМ, чтобы заложить в дверь"
SWEP.Category = "SG's Homigrad | Примочки убийцы"

SWEP.Spawnable 				= true
SWEP.AdminOnly 				= false

SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "none"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.Weight					= 5
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.Slot					= 4
SWEP.SlotPos				= 2
SWEP.DrawAmmo				= true
SWEP.DrawCrosshair			= false

SWEP.ViewModel = "models/pwb/weapons/w_f1.mdl"
SWEP.WorldModel = "models/pwb/weapons/w_f1.mdl"

SWEP.DrawWeaponSelection = DrawWeaponSelection
SWEP.OverridePaintIcon = OverridePaintIcon

SWEP.dwsPos = Vector(20,20,15)
SWEP.dwsItemPos = Vector(0,0,5)
function SWEP:DrawHUD()
    local owner = self:GetOwner()
    local tr = {}
    tr.start = owner:GetAttachment(owner:LookupAttachment("eyes")).Pos
    local dir = Vector(1,0,0)
    dir:Rotate(owner:EyeAngles())
    tr.endpos = tr.start + dir * 75
    tr.filter = owner

    local traceResult = util.TraceLine(tr)
    local ent = traceResult.Entity

    if not IsValid(ent) then
        local hit = traceResult.Hit and 1 or 0
        local frac = traceResult.Fraction
        surface.SetDrawColor(Color(255, 255, 255, 255 * hit))
        draw.NoTexture()
        Circle(traceResult.HitPos:ToScreen().x, traceResult.HitPos:ToScreen().y, 5 / frac, 32)
    elseif ent:GetClass() == "prop_door_rotating" or ent:GetClass() == "func_door_rotating" then
        local frac = traceResult.Fraction
        surface.SetDrawColor(Color(255, 255, 255, 255))
        draw.NoTexture()
        Circle(traceResult.HitPos:ToScreen().x, traceResult.HitPos:ToScreen().y, 5 / frac, 32)
        draw.DrawText( "Поставить растяжку", "TargetID", traceResult.HitPos:ToScreen().x, traceResult.HitPos:ToScreen().y - 40, color_white, TEXT_ALIGN_CENTER )
    end
end
function SWEP:PrimaryAttack()
    local owner = self:GetOwner()
    local tr = {}
    tr.start = owner:GetAttachment(owner:LookupAttachment("eyes")).Pos
    local dir = Vector(1,0,0)
    dir:Rotate(owner:EyeAngles())
    tr.endpos = tr.start + dir * 75
    tr.filter = owner

    local traceResult = util.TraceLine(tr)
    local ent = traceResult.Entity
    --owner:ChatPrint(ent:GetMaterialType())
    if IsValid(ent) and SERVER then
        if ent:GetClass() == "prop_door_rotating" or entity:GetClass() == "func_door_rotating" then
            ent:SetNWBool("hasf1",true)
            ent:EmitSound("buttons/button24.wav",75,50)
            self:Remove()
        end
    end
end
hook.Add("PlayerUse", "ExplosiveDoorTrigger", function(player, entity)
    -- Проверяем, является ли объект дверью
    if entity:IsValid() and (entity:GetClass() == "prop_door_rotating" or entity:GetClass() == "func_door_rotating") and entity:GetNWBool("hasf1") then
        entity:SetNWBool("hasf1",false)
        local granade = ents.Create("ent_hgjack_f1nade")
        granade:SetPos(entity:GetPos())
        granade:Spawn()
        granade:Arm()
    end
end)