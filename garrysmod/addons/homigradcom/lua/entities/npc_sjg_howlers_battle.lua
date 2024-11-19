---If you're here, fuck you and fuck your shit bitch, GTFO!!!
if not DrGBase then return end 
ENT.Base = "drgbase_nextbot"

--- also ffs don't say any of this is fucking stolen from "hUgGy wuGgY"


ENT.PrintName = "Howler"
ENT.Description = "Made by Sevv, Junder and G&TC"
ENT.Category = "S&J&G Criptids"
ENT.Models = {"models/sevv/backrooms_junder/faggotasshole.mdl"}
ENT.OnIdleSounds = {"sjg/howlers/idle1.wav","sjg/howlers/idle2.wav"}
ENT.ModelScale = 1

ENT.Factions = {"BACKROOMS_HOWLERS_HOSTILE"} 

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
			self:PlaySequenceAndMove("attack")
			end
			if cbt == 2 then
            self:PlaySequenceAndMove("bitchslap",1,self.PossessionFaceForward)		
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
							self:Gkub()
          self:PlaySequenceAndMove("move",1,self.PossessionFaceForward)	
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
ENT.SpawnHealth = 20000 
ENT.HealthRegen = 2
ENT.Acceleration = 920
ENT.Deceleration = 400
ENT.WalkSpeed = 80  
ENT.RunSpeed = 380 
ENT.WalkAnimation = "walk"  -- Walk anim
ENT.IdleAnimation = "idle"  -- Idle anim
ENT.RunAnimation = "run"  -- run anim
ENT.JumpAnimation = "falling"
ENT.BloodColor = NONE
ENT.CollisionBounds = Vector(10, 10, 70)
-- Sounds --
ENT.OnDamageSounds = {"trypo/hurt1.mp3"}
ENT.OnDeathSounds = {"trypo/aggro.mp3"} 


ENT.MeleeAttackRange = 32 
ENT.ReachEnemyRange = 32
ENT.AvoidEnemyRange = 0











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
     self:EmitSound("sjg/howlers/step"..math.random(3)..".wav",100,90)
end

function ENT:Grab(ent)
    local num = GetConVarNumber( "sevv_howlers_corpsefade" )
    local grabbed = false
    local succeed = false
    self:PlaySequenceAndMove("attack", 999, function(self, cycle)
        if grabbed or cycle < 0.28571428571429 then return end
        grabbed = true
        if not IsValid(ent) then return end
        if self:GetHullRangeSquaredTo(ent) > 100^2 then return end
        succeed = true

        local dmg = DamageInfo() dmg:SetAttacker(self)
        local ragdoll = ent:DrG_RagdollDeath(dmg)

        actualragdoll = self:GrabRagdoll(ragdoll, "head", "po")
        if ent:IsPlayer() then ent:SetPos(self:GetPos() + (self:GetForward()*0) + Vector(0,0,0)) end
        return true
    end)
    if succeed then
	        self:Timer(0.3,function()
		self:EmitSound("sjg/howlers/kill.wav")
		end)
        self:Timer(2,function()
            self:EmitSound("physics/body/body_medium_break"..math.random(2,3)..".wav",511,100)
            ParticleEffectAttach("blood_advisor_puncture_withdraw",PATTACH_POINT_FOLLOW,self,1)
            for i=1,math.random(5,10) do ParticleEffectAttach("blood_impact_red_01",PATTACH_POINT_FOLLOW,self,1) end
            if (ent:IsPlayer() and !ent:Alive()) then
                ent:ScreenFade(SCREENFADE.IN,Color(255,0,0,255),0.3,0.2)
                self:EmitSound("player/pl_pain"..math.random(5,7)..".wav",511,100)
            end
            actualragdoll:Fire("fadeandremove",1,num)
            actualragdoll:ManipulateBoneScale(actualragdoll:LookupBone("ValveBiped.Bip01_Head1"), Vector(0,0,0))
			     self:Timer(1.3,function() --- fuck velocity
				             self:DropAllRagdolls()
							 end)
        end)
        self:PlaySequenceAndMove("egg")
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
    damage = 1100,
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
    damage = 861,
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
    damage = 620,
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
    damage = 960,
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

function ENT:OnRemove()
	self:CallOnRemove("thankswhynotboi", function(ent) 
      for i = 1,10 do
        self:StopSound("sjg/howlers/howler.wav")
      end
      end)
	  end

  -- AI --
  
function ENT:OnMeleeAttack(enemy)
			 local cbt = math.random(4)
             if cbt == 1 then	
			 self:AttackScript()
			self:PlaySequenceAndMove("attack",1,self.FaceEnemy)
			end
			if cbt == 2 then
			self:AttackScript()
            self:PlaySequenceAndMove("bitchslap",1,self.FaceEnemy)	
			end
			if cbt == 3 then
			self:Gkub()
            self:PlaySequenceAndMove("move",1,self.FaceEnemy)	
			end
			if cbt == 4 then
			if enemy:Health() < 200 then
			self:Grab(enemy)
			end
end
end

AddCSLuaFile()
DrGBase.AddNextbot(ENT)
