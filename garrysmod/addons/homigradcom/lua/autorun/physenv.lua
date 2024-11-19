/*
Original author unknown
*/

local MaxVelocity =                    CreateConVar( "phys_maxvelocity", "4000",              { FCVAR_GAMEDLL, FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE } );
local MaxAngularVelocity =             CreateConVar( "phys_maxangularvelocity", "3600",       { FCVAR_GAMEDLL, FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE } );
local GravityX =                       CreateConVar( "phys_gravity_x", "0",                   { FCVAR_GAMEDLL, FCVAR_NOTIFY, FCVAR_REPLICATED } );
local GravityY =                       CreateConVar( "phys_gravity_y", "0",                   { FCVAR_GAMEDLL, FCVAR_NOTIFY, FCVAR_REPLICATED } );
local GravityZ =                       CreateConVar( "phys_gravity_z", "-600",                { FCVAR_GAMEDLL, FCVAR_NOTIFY, FCVAR_REPLICATED } );
local CollisionsPerObjectPerTimestep = CreateConVar( "phys_collisions_object_timestep", "10", { FCVAR_GAMEDLL, FCVAR_NOTIFY, FCVAR_REPLICATED } );
local CollisionsPerTimestep =          CreateConVar( "phys_collisions_timestep", "250",       { FCVAR_GAMEDLL, FCVAR_NOTIFY, FCVAR_REPLICATED } );
local MinFrictionMass =                CreateConVar( "phys_minfrictionmass", "10",            { FCVAR_GAMEDLL, FCVAR_NOTIFY, FCVAR_REPLICATED } );
local MaxFrictionMass =                CreateConVar( "phys_maxfrictionmass", "2500",          { FCVAR_GAMEDLL, FCVAR_NOTIFY, FCVAR_REPLICATED } );
local AirDensity =                     CreateConVar( "phys_airdensity", "2",                  { FCVAR_GAMEDLL, FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE } );

/*------------------------------------
    UpdatePerformanceSettings()
------------------------------------*/
local function UpdatePerformanceSettings()
 
    local settings = physenv.GetPerformanceSettings();
 
    settings.MaxVelocity = MaxVelocity:GetFloat();
    settings.MaxAngularVelocity = MaxAngularVelocity:GetFloat();
    settings.MinFrictionMass = MinFrictionMass:GetFloat();
    settings.MaxFrictionMass = MaxFrictionMass:GetFloat();
    settings.MaxCollisionsPerObjectPerTimestep = CollisionsPerObjectPerTimestep:GetInt();
    settings.MaxCollisionChecksPerTimestep = CollisionsPerTimestep:GetInt();
 
    physenv.SetPerformanceSettings( settings );
 
end
 
/*------------------------------------
    UpdateGravity()
------------------------------------*/
local function UpdateGravity()
 
    physenv.SetGravity( Vector( GravityX:GetFloat(), GravityY:GetFloat(), GravityZ:GetFloat() ) );
     
end
 
/*------------------------------------
    UpdateAirDensity()
------------------------------------*/
local function UpdateAirDensity()
 
    physenv.SetAirDensity( AirDensity:GetFloat() );
     
end
 
/*------------------------------------
    InitPostEntity()
------------------------------------*/
local function InitPostEntity()
 
    UpdatePerformanceSettings();
    UpdateGravity();
    UpdateAirDensity();
 
end
hook.Add( "InitPostEntity", "PhysicsSettingsStartup", InitPostEntity );
 
// watch for changes on these convars
cvars.AddChangeCallback( "phys_maxvelocity", UpdatePerformanceSettings );
cvars.AddChangeCallback( "phys_maxangularvelocity", UpdatePerformanceSettings );
cvars.AddChangeCallback( "phys_collisions_object_timestep", UpdatePerformanceSettings );
cvars.AddChangeCallback( "phys_collisions_timestep", UpdatePerformanceSettings );
cvars.AddChangeCallback( "phys_minfrictionmass", UpdatePerformanceSettings );
cvars.AddChangeCallback( "phys_maxfrictionmass", UpdatePerformanceSettings );
cvars.AddChangeCallback( "phys_gravity_x", UpdateGravity );
cvars.AddChangeCallback( "phys_gravity_y", UpdateGravity );
cvars.AddChangeCallback( "phys_gravity_z", UpdateGravity );
cvars.AddChangeCallback( "phys_airdensity", UpdateAirDensity );