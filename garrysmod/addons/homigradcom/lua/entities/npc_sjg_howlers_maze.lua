---If you're here, fuck you and fuck your shit bitch, GTFO!!!
if not DrGBase then return end 
ENT.Base = "drgbase_nextbot"

--- also ffs don't say any of this is fucking stolen from "hUgGy wuGgY"


ENT.PrintName = "Howler (Horror)"
ENT.Description = "Made by Sevv, Junder and G&TC"
ENT.Category = "S&J&G Criptids"
ENT.Models = {"models/sevv/backrooms_junder/faggotasshole.mdl"}
ENT.OnIdleSounds = {"sjg/howlers/idle1.wav","sjg/howlers/idle2.wav"}
ENT.ModelScale = 1.1

ENT.Factions = {"BACKROOMS_HOWLERS_HOSTILE2"} 

ENT.EyeBone = "head" 
ENT.EyeOffset = Vector(9.5, 0, 5) 

ENT.PossessionCrosshair = true
ENT.PossessionEnabled = true
ENT.PossessionMovement = POSSESSION_MOVE_1DIR --- leave this on unless i figure out what it does lmao
ENT.PossessionViews = {
  {
    offset = Vector(0, 0,70),
    distance = 200
  },
  {
    offset = Vector(10.10, 10, 3),
    distance = 2,
    eyepos = true
  }
}
ENT.PossessionBinds = {
	[IN_ATTACK] = {{
		coroutine = true,
		onkeydown = function(self)
					self:AttackScript()
        	local cbt = math.random(2)
             if cbt == 1 then	
			self:PlaySequenceAndMove("attack",2)
			end
			if cbt == 2 then
            self:PlaySequenceAndMove("bitchslap",1.5,self.PossessionFaceForward)		
            end
				   end
   }},
        [IN_ATTACK2] = {{
    coroutine = true,
    onkeydown = function(self)
		self:PossessorNormal()
			self:FaceTowards(self:GetPos() + self:PossessorNormal())
			local ent = self:GetClosestEnemy()
				self:Grab(ent)
           end
			}},
		[IN_RELOAD] = {{
		coroutine = true,
		onkeydown = function(self)
	for k,ball in pairs(ents.FindInSphere(self:LocalToWorld(Vector(0,0,75)), 50)) do
		if IsValid(ball) and ball:GetClass() == "prop_door_rotating" then
			self:DoorShit(ball)
		end
	end
end
			}},
			[KEY_T] = {{
		coroutine = true,
		onbuttondown = function(self)
			if not self:GetCooldown("Grab6122") then return end --- oh god we're doomed!
			if self:GetCooldown("Grab6122") == 0 then
				self:SetCooldown("Grab6122", 6)  
		self:EmitSound("physics/concrete/concrete_break3.wav",350,90)
			self:SetVelocity( self:GetForward() * 1000 +self:GetUp() * 1150)
			self:Jump(222)
        end
		end
			}},
	[IN_JUMP] = {{
		coroutine = true,
		onkeydown = function(self)
			  	 	if not self:GetCooldown("Grab612") then return end --- oh god we're doomed!
			if self:GetCooldown("Grab612") == 0 then
				self:SetCooldown("Grab612", 3)  
		self:EmitSound("physics/concrete/concrete_break3.wav",350,90)
			self:Jump(150,1,self.PossessionFaceForward)
		end
		end
	}}
}


-- Stats --
ENT.SpawnHealth = 2000
ENT.HealthRegen = 10
ENT.Acceleration = 530
ENT.Deceleration = 300
ENT.WalkSpeed = 40 
ENT.WalkAnimRate = 0.8 
ENT.RunSpeed = 500 
ENT.WalkAnimation = "walk"  -- Walk anim
ENT.IdleAnimation = "idle"  -- Idle anim
ENT.RunAnimation = "run"  -- run anim
ENT.JumpAnimation = "falling"
ENT.BloodColor = DONT_BLEED
ENT.CollisionBounds = Vector(10, 10, 70)
-- Sounds --
ENT.OnDamageSounds = {"trypo/hurt1.mp3"}
ENT.OnDeathSounds = {"trypo/aggro.mp3"} 

ENT.RangeAttackRange = 1730
ENT.MeleeAttackRange = 32 
ENT.ReachEnemyRange = 32
ENT.AvoidEnemyRange = 140






---function ENT:OnSpawn()
---DrGBase.Print("This Nextbot (Howler) is mainly meant for mazes, but you can use it in fights if you'd like.", {chat = true, color = DrGBase.CLR_RED})
---end




---hey
--hi
-----------
----------
--------
----------











if SERVER then

function ENT:CustomInitialize()

	self:SetDefaultRelationship(D_HT)
	self:SetFactionRelationship(FACTION_COMBINE, D_HT)
	self:SequenceEvent("walk",10/11,self.Step)
	self:SequenceEvent("walk",5/11,self.Step)
	self:SequenceEvent("run",1/11,self.Step)
	self:SequenceEvent("run",6/11,self.Step)
	self:SequenceEvent("run",11/11,self.Step)
	--self:SequenceEvent("run",self.Doe)
	self.Running = false
	
end

function ENT:OnChaseEnemy(enemy) --- piss poo poo shit balls!!!111
	for k,ball in pairs(ents.FindInSphere(self:LocalToWorld(Vector(0,0,75)), 50)) do
		if IsValid(ball) and ball:GetClass() == "prop_door_rotating" then
			self:DoorShit(ball)
			else
		for k,ball in pairs(ents.FindInSphere(self:LocalToWorld(Vector(0,0,75)), 50)) do
		if IsValid(ball) and ball:GetClass() == "func_door" || ball:GetClass() == "func_door_rotating" then
		    ball:Fire("Unlock")
			ball:Fire("Open")
		end
	end
end
end
end

function ENT:DoorShit() -- fuck cum shit poop balls
	for k,v in pairs(ents.FindInSphere(self:LocalToWorld(Vector(0,0,75)), 50)) do
		    if IsValid(v) && IsValid(self) then
            if v:GetClass() == "prop_door_rotating" then
                local pos = v:GetPos()
                local angles = v:GetAngles()
                local model = v:GetModel()
                local bodygroups = v:GetBodyGroups()
                local skinn = v:GetSkin()

                //print(model)

                local broken_door = ents.Create("prop_physics")
                broken_door:SetPos(pos)
                broken_door:SetAngles(angles)
                broken_door:SetModel(model)
                broken_door:SetBodyGroups(bodygroups)
                broken_door:SetSkin(skinn)
                broken_door:SetCustomCollisionCheck(true)

                v:EmitSound("doors/vent_open2.wav",350,90)
                v:Remove()

                broken_door:Spawn()

                local phys = broken_door:GetPhysicsObject()
                if IsValid(phys) then
                    phys:ApplyForceOffset(self:GetForward() * 30000, phys:GetMassCenter())
                    end
                elseif v:GetClass() == "func_door" || v:GetClass() == "func_door_rotating" then
				ball:Fire("Unlock") -- unlock it first dumble dick
                    v:Fire("Open")
                end 
            end
        end
end
	
	

function ENT:FatalityAI()
    if enemy:Health() <= (enemy:GetMaxHealth()*0.35) then
            self:Grab(enemy)
    end
end

function ENT:Step()
     util.ScreenShake(self:GetPos(),5,2,1,185)
     self:EmitSound("sjg/howlers/step"..math.random(3)..".wav")
end
function ENT:FreezePlayer(ent)
	if IsValid(ent) and ent:IsPlayer() then
		ent:Freeze(true)
		ent:StripWeapons()
		ent:SetNoDraw(true)
		self:SetIgnored(ent, true)
		self.cent = ents.Create("prop_physics")
		self.cent:SetModel("models/dav0r/camera.mdl")
		self.cent:SetRenderMode(1)
		self.cent:SetColor(Color(255, 255, 255, 0))
		self.cent:DrawShadow(false)
		self.cent:SetMoveType( MOVETYPE_NONE )
		self.cent:SetParent(self, 2)
		self.cent:SetLocalPos(Vector(5, -5, 0))
		self.cent:SetAngles(Angle(self:GetAngles().x, self:GetAngles().y, self:GetAngles().z) + Angle(180,180,90))
		if !IsValid(self.cent) then return end
		ent:SetViewEntity(self.cent)
	end
end

function ENT:GetGrabbedPlayer()
	return self:GetNW2Entity("GrabbedPlayer")
end

function ENT:SetGrabbedPlayer(value)
	return self:SetNW2Entity("GrabbedPlayer", value)
end

function ENT:GetGrabbedEnemy()
	return self:GetNW2Entity("GrabbedEnemy")
end

function ENT:SetGrabbedEnemy(value)
	return self:SetNW2Entity("GrabbedEnemy", value)
end

function ENT:Grab(ent)
    local num = GetConVarNumber( "sevv_howlers_corpsefade" )
	local grabbed = false
	local succeed = false
		self:PlaySequenceAndMove("idle", 99999999, function(self, cycle)
		if grabbed or cycle < 0.28571428571429 then return end
        	grabbed = true
        	if not IsValid(ent) then return end
        	if self:GetHullRangeSquaredTo(ent) > 125^2 then return end
        	succeed = true

		local dmg = DamageInfo() dmg:SetAttacker(self)
		local ragdoll = ent:DrG_RagdollDeath(dmg)

		self.actualragdoll = self:GrabRagdoll(ragdoll, "head", "po1")
		self:SetGrabbedEnemy(ent)
		if ent:IsPlayer() then self:SetGrabbedPlayer(ent) self:FreezePlayer(ent) end
        	return true
	end)
	if succeed then
		        self:Timer(0.3,function()
		self:EmitSound("sjg/howlers/kill.wav")
		end)
		      	self:Timer(1,function()
            		self:EmitSound("physics/body/body_medium_break"..math.random(2,3)..".wav")
            ParticleEffectAttach("blood_advisor_puncture_withdraw",PATTACH_POINT_FOLLOW,self,2)
			ParticleEffectAttach("blood_advisor_puncture_withdraw",PATTACH_POINT_FOLLOW,self,1)
			ParticleEffectAttach("blood_advisor_puncture_withdraw",PATTACH_POINT_FOLLOW,self,2)
			if (ent:IsPlayer() and !ent:Alive()) then
                		ent:ScreenFade(SCREENFADE.IN,Color(225,10,25,75),0.3,0.2)
						end
			end)
        	self:Timer(1.8,function()
            		self:EmitSound("physics/body/body_medium_break"..math.random(2,3)..".wav")
            ParticleEffectAttach("blood_advisor_puncture_withdraw",PATTACH_POINT_FOLLOW,self,2)
            for i=1,math.random(5,10) do ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,1) end
            		if (ent:IsPlayer() and !ent:Alive()) then
                		ent:ScreenFade(SCREENFADE.IN,Color(255,0,0,255),0.3,0.2)
                		self:EmitSound("player/pl_pain"..math.random(5,7)..".wav")
            		end
            		if IsValid(self.actualragdoll) then
                		self:DropAllRagdolls()
               			self.actualragdoll:Fire("fadeandremove",1,num)
                		local HeadBone = self.actualragdoll:DrG_SearchBone("Head")
                		if HeadBone then
			self.actualragdoll:ManipulateBoneScale(HeadBone, Vector(0,0,0))
			end
		end
	end)
	self:PlaySequenceAndMove("jumpscare",0.7)
	end
end

function ENT:OnRemove()
	self:CallOnRemove("thankswhynotboi", function(ent) 
      for i = 1,10 do
        self:StopSound("sjg/howlers/howler.wav")
      end
      end)
	if IsValid(self:GetGrabbedPlayer()) then
		self:GetGrabbedPlayer():SetParent(nil)
		self:GetGrabbedPlayer():SetViewEntity(nil)
		self:GetGrabbedPlayer():Freeze(false)
		self:GetGrabbedPlayer():SetNoDraw(false)
		if IsEntity(self.cent) then
			self.cent:Remove()
		end
	end
end

function ENT:CustomThink()
	if IsValid(self:GetGrabbedPlayer()) then
		if self:GetSequence() != self:LookupSequence("jumpscare") then
			if IsValid(self:GetGrabbedPlayer()) then
				self:GetGrabbedPlayer():SetParent(nil)
				self:GetGrabbedPlayer():SetViewEntity(nil)
				self:GetGrabbedPlayer():Freeze(false)
				self:GetGrabbedPlayer():SetNoDraw(false)
				self:SetIgnored(self:GetGrabbedPlayer(), false)
				self:SetGrabbedPlayer(nil)
				if IsEntity(self.cent) then
					self.cent:Remove()
				end
			end
		end
	end
	if IsValid(self:GetGrabbedEnemy()) and not IsValid(self:GetGrabbedPlayer()) then
		local camerapos = self:GetAttachment(self:LookupAttachment("po1")).Pos
		self:GetGrabbedEnemy():SetPos(camerapos)
		if self:GetSequence() != self:LookupSequence("jumpscare") then
			if IsValid(self:GetGrabbedEnemy()) then
				self:SetGrabbedEnemy(nil)
			end
		end
	end
end


function ENT:OnContact(ent,enemy) --- BRUTAL PHYSICS RAPE!!!!!!!
	local phys = ent:GetPhysicsObject()
	if ent:GetClass() == "prop_physics" then -- trying to make it throw props like in the film
		local velocity = Vector(1122, 1211, 1213)
		local pos = ent:GetPos()
		local dmg = DamageInfo()
		dmg:SetDamageForce(velocity)
		dmg:SetDamageType(DMG_SLASH)
		dmg:SetAttacker(self)
		dmg:SetReportedPosition(self:GetPos())
 
		ent:SetVelocity(velocity)
		ent:TakeDamageInfo(dmg) 
		phys:EnableMotion(true)
	    constraint.RemoveAll(ent)
		end
		end
		


  function ENT:AttackScript()
      self:Attack({
    damage = 160,
    range=120,
    delay=0.4,
    radius=340,
    type = DMG_SLASH,
	}, function(self, hit)
        if #hit > 0 then
		viewpunch = Angle(30, math.random(-16, 20), 0),
          self:EmitSound("npc/fast_zombie/claw_strike"..math.random(1,3)..".wav",100,100)
        else self:EmitSound("npc/vort/claw_swing"..math.random(1,2)..".wav",100,100) end
      end)
  end
    function ENT:Gkub()
	self:AttackScript3()
      self:Attack({
    damage = 61,
    range=120,
    delay=0.4,
    radius=340,
    type = DMG_SLASH,
	}, function(self, hit)
        if #hit > 0 then
		viewpunch = Angle(30, math.random(-16, 20), 0),
          self:EmitSound("npc/fast_zombie/claw_strike"..math.random(1,3)..".wav",100,100)
        else self:EmitSound("npc/vort/claw_swing"..math.random(1,2)..".wav",100,100) end
      end)
  end
    function ENT:AttackScript3()
		self:AttackScript6()
      self:Attack({
    damage = 150,
    range=120,
    delay=1,
    radius=340,
    type = DMG_SLASH,
	}, function(self, hit)
        if #hit > 0 then
		viewpunch = Angle(30, math.random(-16, 20), 0),
          self:EmitSound("npc/fast_zombie/claw_strike"..math.random(1,3)..".wav",100,100)
        else self:EmitSound("npc/vort/claw_swing"..math.random(1,2)..".wav",100,100) end
      end)
  end
    function ENT:AttackScript6()
      self:Attack({
    damage = 60,
    range=120,
    delay=1.5,
    radius=340,
    type = DMG_SLASH,
	}, function(self, hit)
        if #hit > 0 then
		viewpunch = Angle(30, math.random(-16, 20), 0),
          self:EmitSound("npc/fast_zombie/claw_strike"..math.random(1,3)..".wav",100,100)
        else self:EmitSound("npc/vort/claw_swing"..math.random(1,2)..".wav",100,100) end
      end)
  end
  
 function ENT:OnIdle()
        self:AddPatrolPos(self:RandomPos(1500))
end
end

function ENT:OnNewEnemy(enemy)
    self:EmitSound("sjg/howlers/q.wav")
    self:EmitSound("sjg/howlers/howler.wav")
end
function ENT:OnLastEnemy(enemy)
    self:StopSound("sjg/howlers/howler.wav")
end
  -- AI --
  
function ENT:OnMeleeAttack(enemy)
			 local cbt = math.random(1)
             if cbt == 1 then	
			 if enemy:Health() < 200 then
			 self:Grab(enemy)
		    else
			self:AttackScript() -- just in case 
            self:PlaySequenceAndMove("bitchslap",1,self.FaceEnemy)	
			end
		end
end

function ENT:OnSpawn()
self:SetCooldown("Grab6122", 10) 
end

			

AddCSLuaFile()
DrGBase.AddNextbot(ENT)
