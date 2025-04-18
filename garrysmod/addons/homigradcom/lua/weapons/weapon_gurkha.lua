if engine.ActiveGamemode() == "homigradcom" then
if CLIENT then
SWEP.DrawWeaponInfoBox	= false
SWEP.BounceWeaponIcon = false
end

SWEP.PrintName = "Кукри"
SWEP.Author = "SG's Homigrad"
SWEP.Instructions = "Режущий инструмент, используемый для рубки деревьев, листвы и других вещей, которые попадутся под руку. Обладает удобной рукоятью и длинным лезвием, благодаря чему становится отличным оружием ближнего боя."
SWEP.Category = "SG's Homigrad | Ближний Бой"

SWEP.Spawnable= true
SWEP.AdminSpawnable= true
SWEP.AdminOnly = false

SWEP.ViewModelFOV = 60
SWEP.ViewModel = "models/weapons/insurgency/v_gurkha.mdl"
SWEP.WorldModel = "models/weapons/insurgency/w_gurkha.mdl"
SWEP.ViewModelFlip = false

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Slot = 1
SWEP.SlotPos = 2

SWEP.UseHands = true

SWEP.HoldType = "knife"

SWEP.FiresUnderwater = false

SWEP.DrawCrosshair = false

SWEP.DrawAmmo = true

SWEP.Base = "weapon_base"

SWEP.CSMuzzleFlashes = true

SWEP.Vehicle = 0
SWEP.Sprint = 0

SWEP.Primary.Sound = Sound( "Weapon_Knife.Single" )
SWEP.Primary.Damage = 35
SWEP.Primary.Ammo = "none"
SWEP.Primary.DefaultClip = 0
SWEP.Primary.Automatic = true
SWEP.Primary.Recoil = 0.5
SWEP.Primary.Delay = 0.9
SWEP.Primary.Force = 270

SWEP.Secondary.ClipSize = 0
SWEP.Secondary.DefaultClip = 0
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

function SWEP:DrawWeaponSelection( x, y, wide, tall, alpha )
	if !IsValid(DrawModel) then
		DrawModel = ClientsideModel( self.WorldModel, RENDER_GROUP_OPAQUE_ENTITY );
		DrawModel:SetNoDraw( true );
	else
		DrawModel:SetModel( self.WorldModel )

		local vec = Vector(55,55,55)
		local ang = Vector(-48,-48,-48):Angle()

		cam.Start3D( vec, ang, 20, x, y+35, wide, tall, 5, 4096 )
			cam.IgnoreZ( true )
			render.SuppressEngineLighting( true )

			render.SetLightingOrigin( self:GetPos() )
			render.ResetModelLighting( 50/255, 50/255, 50/255 )
			render.SetColorModulation( 1, 1, 1 )
			render.SetBlend( 255 )

			render.SetModelLighting( 4, 1, 1, 1 )

			DrawModel:SetRenderAngles( Angle( 0, RealTime() * 30 % 360, 0 ) )
			DrawModel:DrawModel()
			DrawModel:SetRenderAngles()

			render.SetColorModulation( 1, 1, 1 )
			render.SetBlend( 1 )
			render.SuppressEngineLighting( false )
			cam.IgnoreZ( false )
		cam.End3D()
	end

	self:PrintWeaponInfo( x + wide + 20, y + tall * 0.95, alpha )

end

function Circle( x, y, radius, seg )
    local cir = {}

    table.insert( cir, { x = x, y = y, u = 0.5, v = 0.5 } )
    for i = 0, seg do
        local a = math.rad( ( i / seg ) * -360 )
        table.insert( cir, { x = x + math.sin( a ) * radius, y = y + math.cos( a ) * radius, u = math.sin( a ) / 2 + 0.5, v = math.cos( a ) / 2 + 0.5 } )
    end

    local a = math.rad( 0 ) -- This is needed for non absolute segment counts
    table.insert( cir, { x = x + math.sin( a ) * radius, y = y + math.cos( a ) * radius, u = math.sin( a ) / 2 + 0.5, v = math.cos( a ) / 2 + 0.5 } )

    surface.DrawPoly( cir )
end

function SWEP:DrawHUD()
		if not (GetViewEntity() == LocalPlayer()) then return end
		if LocalPlayer():InVehicle() then return end
			local ply = self:GetOwner()
local t = {}
t.start = ply:GetAttachment(ply:LookupAttachment("eyes")).Pos
t.endpos = t.start + ply:GetAngles():Forward() * 90
t.filter = self:GetOwner()
local Tr = util.TraceLine(t)

if Tr.Hit then

		local Size = math.Clamp(1 - ((Tr.HitPos - self:GetOwner():GetShootPos()):Length() / 90) ^ 2, .1, .3)
		surface.SetDrawColor(Color(200, 200, 200, 200))
		draw.NoTexture()
		Circle(Tr.HitPos:ToScreen().x, Tr.HitPos:ToScreen().y, 55 * Size, 32)

		surface.SetDrawColor(Color(255, 255, 255, 255 * Size/0.5))
		draw.NoTexture()
		Circle(Tr.HitPos:ToScreen().x, Tr.HitPos:ToScreen().y, 40 * Size, 32)
	end
end


function SWEP:Initialize()
self:SetHoldType( "melee" )
end


function SWEP:Deploy()
self:SetNextPrimaryFire( CurTime() + self:GetOwner():GetViewModel():SequenceDuration() )
self:SetHoldType( "melee" )
end

function SWEP:Holster()
return true
end

function SWEP:PrimaryAttack()
	self:GetOwner():SetAnimation( PLAYER_ATTACK1 )
	self:SetNextPrimaryFire( CurTime() + self.Primary.Delay/((self:GetOwner().stamina or 100)/100)-(self:GetOwner():GetNWInt("Adrenaline")/5) )

	if SERVER then
		self:GetOwner().stamina = math.max(self:GetOwner().stamina - 3,0)
		self:GetOwner():EmitSound( "weapons/slam/throw.wav",60 )
	end

	self:GetOwner():LagCompensation( true )
	local ply = self:GetOwner()

	local tra = {}
	tra.start = ply:GetAttachment(ply:LookupAttachment("eyes")).Pos
	tra.endpos = tra.start + ply:GetAngles():Forward() * 80
	tra.filter = self:GetOwner()
	local Tr = util.TraceLine(tra)
	local t = {}
	local pos1, pos2
	local tr
	if not Tr.Hit then
		t.start = ply:GetAttachment(ply:LookupAttachment("eyes")).Pos
		t.endpos = t.start + ply:GetAngles():Forward() * 80
		t.filter = self:GetOwner()
		t.mins = -Vector(6,6,6)
		t.maxs = Vector(6,6,6)
		tr = util.TraceHull(t)
	else
		tr = util.TraceLine(tra)
	end

	pos1 = tr.HitPos + tr.HitNormal
	pos2 = tr.HitPos - tr.HitNormal
	if true then
		if SERVER and tr.HitWorld then
			self:GetOwner():EmitSound(  "snd_jack_hmcd_knifehit.wav", 60)
		end

		if IsValid( tr.Entity ) and SERVER then
			local dmginfo = DamageInfo()
			dmginfo:SetDamageType( DMG_SLASH )
			dmginfo:SetAttacker( self:GetOwner() )
			dmginfo:SetInflictor( self )
			dmginfo:SetDamagePosition( tr.HitPos )
			dmginfo:SetDamageForce( self:GetOwner():GetForward() * self.Primary.Force )
			local angle = self:GetOwner():GetAngles().y - tr.Entity:GetAngles().y
			if angle < -180 then angle = 360 + angle end

			dmginfo:SetDamage( self.Primary.Damage / 1.5 )

			if tr.Entity:IsNPC() or tr.Entity:IsPlayer() then
				self:GetOwner():EmitSound( "snd_jack_hmcd_knifestab.wav", 60)
			else
				if tr.Entity:GetClass() == "prop_ragdoll" then
					self:GetOwner():EmitSound(  "snd_jack_hmcd_knifestab.wav", 60)
				else
					self:GetOwner():EmitSound(  "snd_jack_hmcd_knifehit.wav", 60)
				end
			end
			tr.Entity:TakeDamageInfo( dmginfo )
			

		end
	end

	if SERVER and Tr.Hit then
		if IsValid(Tr.Entity) and Tr.Entity:GetClass()=="prop_ragdoll" then
			util.Decal("Impact.Flesh",pos1,pos2)
		else
			util.Decal("ManhackCut",pos1,pos2)
		end
	end

	self:GetOwner():LagCompensation( false )
end

function SWEP:SecondaryAttack()
	if(CLIENT)then return end
	sound.Play("weapons/slam/throw.wav",self:GetPos(),55,math.random(90,110))
	local ent = ents.Create("ent_hg_thknife")
	ent.Weapon=self:GetClass()
    ent:SetModel(self.WorldModel)
	ent.HmcdSpawned=self.HmcdSpawned
	ent:SetOwner(self.Owner)
	ent:SetPos(self.Owner:GetShootPos())
	local knife_ang = self.Owner:EyeAngles()
	knife_ang:RotateAroundAxis(knife_ang:Up(), -90)
	ent:SetAngles(knife_ang)
	ent.Poisoned=self.Poisoned
	ent.Thrown=true
	ent:Spawn()
	local phys = ent:GetPhysicsObject()
	phys:SetVelocity(self.Owner:GetVelocity()+self.Owner:GetAimVector()*(750))
	phys:AddAngleVelocity(Vector(0, 0, 100))
    self.Owner:StripWeapon(self:GetClass())
end

function SWEP:Reload()
end

function SWEP:Think()
end
end