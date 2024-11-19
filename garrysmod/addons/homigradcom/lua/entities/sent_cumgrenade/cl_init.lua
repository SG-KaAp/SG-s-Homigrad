
include('shared.lua')

local matFlak = Material( "sprites/gunsmoke" )

/*---------------------------------------------------------
   Name: Initialize
---------------------------------------------------------*/
function ENT:Initialize()
	
	self.Color = Color(250,250,250,255)
	DrawCumTime = CurTime()
	
	
end


/*---------------------------------------------------------
   Name: Draw
---------------------------------------------------------*/
function ENT:Draw()
	
	self.Entity:DrawModel()
	
end