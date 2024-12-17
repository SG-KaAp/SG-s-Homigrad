AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"

ENT.PrintName		= "Метательный нож"
ENT.Author			= "SG_KaAp"
ENT.Contact			= ""
ENT.Purpose			= ""
ENT.Instructions	= "Необходимо для метательныхго ножей"
ENT.Weapon = nil

if(SERVER)then
	function ENT:Initialize()
		self:PhysicsInitBox(Vector(0,0,0),Vector(0,0,0))
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:SetCollisionGroup(COLLISION_GROUP_NONE)
		self:SetUseType(SIMPLE_USE)
		self:DrawShadow(true)
		local phys = self:GetPhysicsObject()
		self.HitSomething=false
	end
	function ENT:Use(ply)
		ply:Give(self.Weapon)
		self:Remove()
	end
	function ENT:Think()
		if((self:GetVelocity():Length()>300)and not(self.HitSomething))then
			self:EmitSound("snd_jack_hmcd_tinyswish.wav",70,math.random(90,110))
		end
		if(self.HitSomething)then
			for key,ply in pairs(ents.FindInSphere(self:GetPos(),30))do
				if ply:IsPlayer() then
					ply:Give(self.Weapon)
					self:Remove()
					ply:SelectWeapon(self.Weapon)
				end
			end
		end
		self:NextThink(CurTime()+.1)
		return true
	end

	function ENT:PhysicsCollide(data,physobj)
		local ply = data.HitEntity
		if IsValid(ply) && (ply:IsPlayer() || ply:IsNPC()) then
			if((self.Thrown)and not(self.HitSomething))then
				self.HitSomething=true
				local dmg = DamageInfo()
				dmg:SetDamage(math.random(40,45))
				dmg:SetAttacker(self:GetOwner())
				dmg:SetDamageType(DMG_SLASH)
				dmg:SetDamageForce(data.OurOldVelocity)
				dmg:SetDamagePosition(self:GetPos())
				ply:TakeDamageInfo(dmg)
				self:EmitSound("snd_jack_hmcd_knifestab.wav",55,math.random(90,110))
				local edata = EffectData()
				edata:SetStart(self:GetPos())
				edata:SetOrigin(self:GetPos())
				edata:SetNormal(vector_up)
				edata:SetEntity(ply)
				util.Effect("BloodImpact",edata,true,true)
				local pos = ply:GetPos() + Vector(00,0,40)
				local ang = ply:GetAngles() * 1
				addangle(ang, Angle(-60,0,0))
			end
		elseif(data.DeltaTime>.1)then
			self:EmitSound("snd_jack_hmcd_knifehit.wav",70,math.random(90,110))
		end
		self.HitSomething=true
	end
elseif(CLIENT)then
	function ENT:Initialize()
		--self.Emitter = ParticleEmitter(self:GetPos())
		self.NextPart = CurTime() 
	end

	function ENT:Draw()
		self:DrawModel()
	end

	function ENT:Think()
		local pos = self:GetPos()
		local client = LocalPlayer()

		if false then

			if client:GetPos():Distance(pos) > 1000 then return end

			self.Emitter:SetPos(pos)
			self.NextPart = CurTime() + math.Rand(0, 0.02)
			local vec = VectorRand() * 3
			local pos = self:LocalToWorld(vec)
			local particle = self.Emitter:Add( "particle/snow.vmt", pos)
			particle:SetVelocity(  Vector(0,0, 4) )
			particle:SetDieTime( 7 )
			particle:SetStartAlpha( 140 )
			particle:SetEndAlpha( 0 )
			particle:SetStartSize( 5 )
			particle:SetEndSize( 6 )   
			particle:SetRoll( 0 )
			particle:SetRollDelta( 0 )
			particle:SetColor( 0, 0, 0 )
			//particle:SetGravity( Vector( 0, 0, 10 ) )
		end
	end

	function ENT:OnRemove()
		--self.Emitter:Finish()
	end
end