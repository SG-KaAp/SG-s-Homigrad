AddCSLuaFile()

--this is not done yet

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Goal post"
ENT.Category = "Fun + Games"
ENT.Author = "Jvs"
ENT.Spawnable = false
ENT.AdminOnly = false

function ENT:SpawnFunction( ply , tr , classname )
	if not tr.Hit then
		return
	end

	local spawnpos = tr.HitPos + tr.HitNormal * 25

	local ent = ents.Create( classname )
	ent:SetPos( spawnpos )
	ent:Spawn()
	return ent
end

function ENT:SetupDataTables()

end

function ENT:Initialize()
	
	
	self.CurrentMesh = {}
end

function ENT:UpdateMesh( vecmin , vecmax )

end

--defined shared so that when we make it static, people won't glitch around it and shit
function ENT:CreatePhysicsFromCurrentMesh()

end



if SERVER then

else
	function ENT:CreateIMeshFromCurrentMesh()

	end
	
	function ENT:DrawGoalPost( flags )
	
	end

	function ENT:DrawNet( flags )
	
	end


	function ENT:Draw( flags )
		self:DrawGoalPost( flags )
	end
	
	function ENT:DrawTranslucent( flags )
		self:DrawNet( flags )
	end
end