
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include( 'shared.lua' )


// This is the spawn function. It's called when a client calls the entity to be spawned.
// If you want to make your SENT spawnable you need one of these functions to properly create the entity
//
// ply is the name of the player that is spawning it
// tr is the trace from the player's eyes 
//
function ENT:SpawnFunction( ply, tr )

	if ( !tr.Hit ) then return end
	
	local SpawnPos = tr.HitPos + tr.HitNormal * 16
	
	local ent = ents.Create( "sent_cumgrenade" )
	ent:SetPos( SpawnPos )
	ent:Spawn()
	ent:Activate()
	
	return ent
	
end

function ENT:SetPlayer(ply)

	self.Entity:SetVar( "Founder", ply )
	self.Entity:SetPhysicsAttacker(ply)
	self.Entity:SetOwner(ply)
    self.Entity:SetVar( "FounderIndex", ply:UniqueID() )
    
    self.Entity:SetNetworkedString( "FounderName", ply:Nick() )
	//print(self.Entity:GetNetworkedString( "FounderName" ))

end

/*---------------------------------------------------------
   Name: Initialize
---------------------------------------------------------*/
function ENT:Initialize()

	util.PrecacheModel("models/props/cs_italy/orange.mdl")
	self.Entity:SetModel( "models/props/cs_italy/orange.mdl" )
	self.Entity:PhysicsInit( SOLID_VPHYSICS )
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
	self.Entity:SetSolid( SOLID_VPHYSICS ) 
	self.Entity:SetColor( Color(230,230,230,255) )
	self.Entity:SetMaterial("models/weapons/flare/shellside")
	self.Entity:SetGravity(.5)
	
	local phys = self.Entity:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
		phys:EnableDrag(true)
		phys:EnableCollisions(true)
		phys:SetMass(2)
	end
	
	CumHitSounds = {"vo/k_lab/ba_guh.wav",
"ambient/voices/m_scream1.wav",
"vo/coast/odessa/male01/nlo_cubdeath01.wav",
"vo/npc/male01/answer20.wav",
"vo/npc/male01/answer39.wav",
"vo/npc/male01/fantastic01.wav",
"vo/npc/male01/goodgod.wav",
"vo/npc/male01/gordead_ans05.wav",
"vo/npc/male01/gordead_ans04.wav",
"vo/npc/male01/gordead_ans19.wav",
"vo/npc/male01/ohno.wav",
"vo/npc/male01/pain05.wav",
"vo/npc/male01/pain08.wav",
"vo/npc/male01/pardonme01.wav",
"vo/npc/male01/stopitfm.wav",
"vo/npc/male01/uhoh.wav",
"vo/npc/male01/vanswer01.wav",
"vo/npc/male01/vanswer14.wav",
"vo/npc/male01/watchwhat.wav",
"vo/trainyard/male01/cit_hit01.wav",
"vo/trainyard/male01/cit_hit02.wav",
"vo/trainyard/male01/cit_hit03.wav",
"vo/trainyard/male01/cit_hit04.wav",
"vo/trainyard/male01/cit_hit05.wav"}
	
end

function CumExplode(self)

	local pos = self:GetPos()
	local tracedata = {}
	tracedata.start = pos
	tracedata.endpos = pos+Vector(0,0,-90)
	local trace = util.TraceLine(tracedata)
	if trace.HitWorld then
		util.Decal("PaintSplatPink",trace.HitPos+trace.HitNormal,trace.HitPos-trace.HitNormal)
	end

	local splash = Sound("npc/antlion_grub/squashed.wav")
	
	self:EmitSound(splash,math.random(100,120),math.random(90,110))
	
	local effectdata = EffectData()
	effectdata:SetOrigin(self:GetPos())
	util.Effect("Spermbomb", effectdata)
	
	for i=1,math.random(7,15) do
		local effectdata = EffectData()
		effectdata:SetOrigin( self:GetPos() + Vector(0,0,20))
		effectdata:SetAngles( (VectorRand() * 10):Angle() )
		util.Effect( "sementrail", effectdata )
	end
	
	for i=1,math.random(4,7) do
		local tracedata = {}
		tracedata.start = self:GetPos()+Vector(0,0,90)
		tracedata.endpos = self:GetPos()+Vector(math.random(-150,150),math.random(-150,150),-90)
		local trace = util.TraceLine(tracedata)
		if trace.Hit then
			util.Decal("PaintSplatPink",trace.HitPos+trace.HitNormal,trace.HitPos-trace.HitNormal)
		end
	end
	
	for k,v in pairs(ents.FindInSphere( self:GetPos(), 200 )) do
		if v:IsValid() and v:IsPlayer() then
			local r = math.random(3,6)
			umsg.Start("Cumshot", v)
			umsg.Short( r )
			umsg.End() 
			v:SetNWFloat("cum",v:GetNWFloat("Cum") + 1 )
			if r == 5 then
				v:EmitSound(Sound(CumHitSounds[math.random(1,table.Count(CumHitSounds))]),100,math.random(95,105))
			end
			local tracedata = {}
			tracedata.start = v:GetPos()+Vector(0,0,90)
			tracedata.endpos = v:GetPos()+Vector(0,0,-90)
			local trace = util.TraceLine(tracedata)
			if trace.Hit then
				util.Decal("PaintSplatPink",trace.HitPos+trace.HitNormal,trace.HitPos-trace.HitNormal)
			end
		end
	end
	
	//self:Remove()  This causes console spam. :/
	self:Fire("kill",1,0.01)

end

/*---------------------------------------------------------
   Name: Think
---------------------------------------------------------*/
function ENT:Think()

	if self.Entity:WaterLevel() > 0 then
		CumExplode(self.Entity)
	end
	
	local effectdata = EffectData()
	effectdata:SetOrigin(self.Entity:GetPos())
	util.Effect("spermtrail", effectdata)
  
 end 


/*---------------------------------------------------------
   Name: PhysicsCollide
---------------------------------------------------------*/
function ENT:PhysicsCollide( data, physobj )

	CumExplode(self.Entity)
	
end