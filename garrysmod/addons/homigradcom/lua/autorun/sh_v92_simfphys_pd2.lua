
AddCSLuaFile()

------------------------------
-- Van
------------------------------

local light_table = {
	L_HeadLampPos = Vector(125,29,44),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(125,-29,44),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-92,35,50),
	L_RearLampAng = Angle(0, 0, 0),

	R_RearLampPos = Vector(-92,-35,50),
	R_RearLampAng = Angle(0,0,0),
	
	Headlight_sprites = { 
		Vector(125,29,44),
		Vector(125,-29,44),
	},
	Headlamp_sprites = { 
		Vector(125,29,44),
		Vector(125,-29,44),
	},
	Rearlight_sprites = {
		Vector(-92,35,50),
		Vector(-92,-35,50),
	},
	Brakelight_sprites = {
		Vector(-92,38,42),
		Vector(-92,-38,42),
	},
	Reverselight_sprites = {
		Vector(-92,38,42),
		Vector(-92,-38,42),
	},
}
list.Set( "simfphys_lights", "v92pd2van", light_table)

local V = {
	Name = "Van",
	Model = "models/jessev92/pd2/vehicles/van_chassis.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "V92 :: Payday",
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1500,
		
		LightsTable = "v92pd2van",
				
		CustomWheels = true,       	 -- You have to set this to "true" in order to define custom wheels
		CustomSuspensionTravel = 10,	--suspension travel limiter length
		
		--FrontWheelRadius = 18,		-- if you set CustomWheels to true then the script will figure the radius out by itself using the CustomWheelModel
		--RearWheelRadius = 20,
		
		CustomWheelModel = "models/jessev92/pd2/vehicles/van_tyre.mdl",	-- since we create our own wheels we have to define a model. It has to have a collission model
		--CustomWheelModel_R = "",			-- different model for rear wheels?
		CustomWheelPosFL = Vector(102,-33,15),		-- set the position of the front left wheel. 
		CustomWheelPosFR = Vector(102,33,15),	-- position front right wheel
		CustomWheelPosRL = Vector(-50,-35,15),	-- rear left
		CustomWheelPosRR = Vector(-50,35,15),	-- rear right		NOTE: make sure the position actually matches the name. So FL is actually at the Front Left ,  FR Front Right, ...   if you do this wrong the wheels will spin in the wrong direction or the car will drive sideways/reverse
		CustomWheelAngleOffset = Angle(0,90,0),

		CustomMassCenter = Vector(0,0,0),		-- custom masscenter offset. The script creates a counter weight to make the masscenter exactly in the center of the wheels. However you can add an offset to this to create more body roll if you really have to...
		
		CustomSteerAngle = 35,				-- max clamped steering angle,

		SeatOffset = Vector(55,-17,68),
		--SeatOffset = Vector(37,-17,68),
		SeatPitch = 0,
		SeatYaw = 90,
	
		-- everything below this comment is exactly the same as for normal vehicles. For more info take a look in simfphys_spawnlist.lua
		
		PassengerSeats = {
			{
				pos = Vector(55,-17,32),
				ang = Angle(0,270,0)
			},
			{
				pos = Vector(-28,-25,39),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-45,-25,39),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-60,-25,39),
				ang = Angle(0,0,0)
			},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(-83,-39,15),
				ang = Angle(90,165,0)
			},
		},

		FrontHeight = 0,
		FrontConstant = 75000,
		FrontDamping = 750,
		FrontRelativeDamping = 750,
		
		RearHeight = 0,
		RearConstant = 75000,
		RearDamping = 750,
		RearRelativeDamping = 750,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,
		
		TurnSpeed = 12,
		
		MaxGrip = 43,
		Efficiency = 1.2,
		GripOffset = -2,
		BrakePower = 20,
		
		IdleRPM = 650,	-- must be smaller than powerbandstart
		LimitRPM = 6500,  -- should never be smaller than PowerbandStart
		--Revlimiter = true,  -- LimitRPM MUST be greater than 2500 for this to work!
		PeakTorque = 250,
		PowerbandStart = 2200,  --must be greater than IdleRPM but dont set this too high because it will also be used as shifting point for the automatic transmission.
		PowerbandEnd = 6300, -- should never be greater but ideally 200rpm less than LimitRPM. Must be greater than powerbandstart
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/generic3/generic3_idle.wav",
		
		snd_low = "simulated_vehicles/generic3/generic3_low.wav",
		snd_low_revdown = "simulated_vehicles/generic3/generic3_revdown.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "simulated_vehicles/generic3/generic3_mid.wav",
		snd_mid_gearup = "simulated_vehicles/generic3/generic3_second.wav",
		snd_mid_pitch = 1,
		
		DifferentialGear = 0.5,
		Gears = {-0.1,0,0.15,0.25,0.35,0.45}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_payday2_van", V )

------------------------------
-- DeLorean
------------------------------

local light_table = {
	L_HeadLampPos = Vector(90,32,33),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(90,-32,33),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-111,20,40),
	L_RearLampAng = Angle(0, 0, 0),

	R_RearLampPos = Vector(-111,-20,40),
	R_RearLampAng = Angle(0,0,0),
	
	Headlight_sprites = { 
		Vector(90,32,33),
		Vector(90,23,33),
		Vector(90,-23,33),
		Vector(90,-32,33),
	},
	Headlamp_sprites = { 
		Vector(90,32,33),
		Vector(90,23,33),
		Vector(90,-23,33),
		Vector(90,-32,33),
	},
	FogLight_sprites = {
		{pos = Vector(90,32,33),material = "sprites/light_ignorez",size = 24},
		{pos = Vector(90,23,33),material = "sprites/light_ignorez",size = 24},
		{pos = Vector(90,-23,33),material = "sprites/light_ignorez",size = 24},
		{pos = Vector(90,-32,33),material = "sprites/light_ignorez",size = 24},
	},
	Rearlight_sprites = {
		Vector(-111,20,38),
		Vector(-111,17,38),
		Vector(-111,-17,38),
		Vector(-111,-20,38),
		Vector(-111,20,40),
		Vector(-111,17,40),
		Vector(-111,-17,40),
		Vector(-111,-20,40),
		Vector(-111,20,42),
		Vector(-111,17,42),
		Vector(-111,-17,42),
		Vector(-111,-20,42),
	},
	Brakelight_sprites = {
		Vector(-111,20,38),
		Vector(-111,17,38),
		Vector(-111,-17,38),
		Vector(-111,-20,38),
		Vector(-111,20,40),
		Vector(-111,17,40),
		Vector(-111,-17,40),
		Vector(-111,-20,40),
		Vector(-111,20,42),
		Vector(-111,17,42),
		Vector(-111,-17,42),
		Vector(-111,-20,42),
	},
	Reverselight_sprites = {
		Vector(-111,14,38),
		Vector(-111,-14,38),
		Vector(-111,14,40),
		Vector(-111,-14,40),
		Vector(-111,14,42),
		Vector(-111,-14,42),
	},
	ems_sounds = {"common/null.wav"},
	ems_sprites = {
		--	Front Orange
		{
			pos = Vector(93,33,25.5),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 1, -- for how long each color will be drawn
		},
		{
			pos = Vector(93,-33,25.5),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 1, -- for how long each color will be drawn
		},
		--	Rear Orange
		{
			pos = Vector(-111,28,40),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 1, -- for how long each color will be drawn
		},
		{
			pos = Vector(-111,-28,40),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 1, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "v92pd2delorean", light_table)

local V = {
	Name = "DeLorean",
	Model = "models/jessev92/pd2/vehicles/delorean_chassis.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "V92 :: Payday",
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1500,
		
		LightsTable = "v92pd2delorean",
				
		CustomWheels = true,       	 -- You have to set this to "true" in order to define custom wheels
		CustomSuspensionTravel = 10,	--suspension travel limiter length
		
		--FrontWheelRadius = 18,		-- if you set CustomWheels to true then the script will figure the radius out by itself using the CustomWheelModel
		--RearWheelRadius = 20,
		
		CustomWheelModel = "models/jessev92/pd2/vehicles/delorean_tyre_front.mdl",	-- since we create our own wheels we have to define a model. It has to have a collission model
		CustomWheelModel_R = "models/jessev92/pd2/vehicles/delorean_tyre_rear.mdl",			-- different model for rear wheels?
		CustomWheelPosFL = Vector(51,-37,16),		-- set the position of the front left wheel. 
		CustomWheelPosFR = Vector(51,37,16),	-- position front right wheel
		CustomWheelPosRL = Vector(-67,-40,16),	-- rear left
		CustomWheelPosRR = Vector(-67,40,16),	-- rear right		NOTE: make sure the position actually matches the name. So FL is actually at the Front Left ,  FR Front Right, ...   if you do this wrong the wheels will spin in the wrong direction or the car will drive sideways/reverse
		CustomWheelAngleOffset = Angle(0,90,0),

		CustomMassCenter = Vector(0,0,0),		-- custom masscenter offset. The script creates a counter weight to make the masscenter exactly in the center of the wheels. However you can add an offset to this to create more body roll if you really have to...
		
		CustomSteerAngle = 35,				-- max clamped steering angle,

		SeatOffset = Vector(-26,-23,46),
		SeatPitch = 0,
		SeatYaw = 90,
	
		-- everything below this comment is exactly the same as for normal vehicles. For more info take a look in simfphys_spawnlist.lua
		
		PassengerSeats = {
			{
				pos = Vector(-26,-23,10),
				ang = Angle(0,270,0)
			},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(-110,-20,18),
				ang = Angle(90,180,0)
			},
			{
				pos = Vector(-110,20,18),
				ang = Angle(90,180,0)
			},
		},

		FrontHeight = 5,
		FrontConstant = 75000,
		FrontDamping = 750,
		FrontRelativeDamping = 750,
		
		RearHeight = 5,
		RearConstant = 75000,
		RearDamping = 750,
		RearRelativeDamping = 750,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,
		
		TurnSpeed = 12,
		
		MaxGrip = 43,
		Efficiency = 1.2,
		GripOffset = -2,
		BrakePower = 20,
		
		IdleRPM = 750,	-- must be smaller than powerbandstart
		LimitRPM = 6000,  -- should never be smaller than PowerbandStart
		--Revlimiter = true,  -- LimitRPM MUST be greater than 2500 for this to work!
		PeakTorque = 270,
		PowerbandStart = 2200,  --must be greater than IdleRPM but dont set this too high because it will also be used as shifting point for the automatic transmission.
		PowerbandEnd = 5800, -- should never be greater but ideally 200rpm less than LimitRPM. Must be greater than powerbandstart

		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/generic3/generic3_idle.wav",
		
		snd_low = "simulated_vehicles/generic3/generic3_low.wav",
		snd_low_revdown = "simulated_vehicles/generic3/generic3_revdown.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "simulated_vehicles/generic3/generic3_mid.wav",
		snd_mid_gearup = "simulated_vehicles/generic3/generic3_second.wav",
		snd_mid_pitch = 1,
		
		DifferentialGear = 0.5,
		Gears = {-0.1,0,0.15,0.25,0.35,0.45}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_payday2_delorean", V )

------------------------------
-- Ambulance
------------------------------

local light_table = {
	L_HeadLampPos = Vector(132,32,44),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(132,-32,44),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-135,45,20),
	L_RearLampAng = Angle(0, 0, 0),

	R_RearLampPos = Vector(-135,-45,20),
	R_RearLampAng = Angle(0,0,0),
	
	Headlight_sprites = { 
		Vector(132,32,44),
		Vector(132,-32,44),
		Vector(132,32,38),
		Vector(132,-32,38),
	},
	Headlamp_sprites = { 
		Vector(132,32,44),
		Vector(132,-32,44),
		Vector(132,32,38),
		Vector(132,-32,38),
	},
	Rearlight_sprites = {
		Vector(-105,33,44),
		Vector(-105,-33,44),
	},
	Brakelight_sprites = {
		Vector(-126,47,23),
		Vector(-126,-47,23),
	},
	Reverselight_sprites = {
		Vector(-126,35,23),
		Vector(-126,-35,23),
	},
	FogLight_sprites = {
		{pos = Vector(132,15,38.5),material = "sprites/light_ignorez",size = 24},
		{pos = Vector(132,14,38.5),material = "sprites/light_ignorez",size = 24},
		{pos = Vector(132,13,38.5),material = "sprites/light_ignorez",size = 24},
		{pos = Vector(132,12,38.5),material = "sprites/light_ignorez",size = 24},
		{pos = Vector(132,11,38.5),material = "sprites/light_ignorez",size = 24},
		{pos = Vector(132,10,38.5),material = "sprites/light_ignorez",size = 24},
		
		{pos = Vector(132,-15,38.5),material = "sprites/light_ignorez",size = 24},
		{pos = Vector(132,-14,38.5),material = "sprites/light_ignorez",size = 24},
		{pos = Vector(132,-13,38.5),material = "sprites/light_ignorez",size = 24},
		{pos = Vector(132,-12,38.5),material = "sprites/light_ignorez",size = 24},
		{pos = Vector(132,-11,38.5),material = "sprites/light_ignorez",size = 24},
		{pos = Vector(132,-10,38.5),material = "sprites/light_ignorez",size = 24},
	},
	--ems_sounds = {"simulated_vehicles/police/siren_madmax.wav"},
	ems_sounds = {"simulated_vehicles/police/siren_1.wav","simulated_vehicles/police/siren_2.wav","simulated_vehicles/police/siren_3.wav"},
	ems_sprites = {
		--	Front Lights
		{
			pos = Vector(42,0,103),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(0,0,0,250),Color(0,0,0,255),Color(0,0,0,250),Color(0,0,0,200),Color(0,0,0,150),Color(0,0,0,100),Color(0,0,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.005, -- for how long each color will be drawn
		},
		{
			pos = Vector(42,12.5,103),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(250,0,0,250),Color(0,0,0,255),Color(250,0,0,250),Color(0,0,0,200),Color(250,0,0,150),Color(0,0,0,100),Color(250,0,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(42,-12.5,103),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(250,0,0,250),Color(0,0,0,255),Color(250,0,0,250),Color(0,0,0,200),Color(250,0,0,150),Color(0,0,0,100),Color(250,0,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(42,25,103),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(250,0,0,250),Color(0,0,0,255),Color(250,0,0,250),Color(0,0,0,200),Color(250,0,0,150),Color(0,0,0,100),Color(250,0,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.05, -- for how long each color will be drawn
		},
		{
			pos = Vector(42,-25,103),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(250,0,0,250),Color(0,0,0,255),Color(250,0,0,250),Color(0,0,0,200),Color(250,0,0,150),Color(0,0,0,100),Color(250,0,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.05, -- for how long each color will be drawn
		},
		{
			pos = Vector(42,37.5,103),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(175,75,0,250),Color(0,0,0,255),Color(175,75,0,250),Color(0,0,0,200),Color(175,75,0,150),Color(0,0,0,100),Color(175,75,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.2, -- for how long each color will be drawn
		},
		{
			pos = Vector(42,-37.5,103),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(175,75,0,250),Color(0,0,0,255),Color(175,75,0,250),Color(0,0,0,200),Color(175,75,0,150),Color(0,0,0,100),Color(175,75,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.2, -- for how long each color will be drawn
		},
		--  Left Side
		{
			pos = Vector(19.5,54,104.5),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(250,0,0,250),Color(0,0,0,255),Color(250,0,0,250),Color(0,0,0,200),Color(250,0,0,150),Color(0,0,0,100),Color(250,0,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.05, -- for how long each color will be drawn
		},
		{
			pos = Vector(-24,54,104.5),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(250,75,0,250),Color(0,0,0,255),Color(250,75,0,250),Color(0,0,0,200),Color(250,75,0,150),Color(0,0,0,100),Color(250,75,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.2, -- for how long each color will be drawn
		},
		{
			pos = Vector(-72,54,104.5),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(250,0,0,250),Color(0,0,0,255),Color(250,0,0,250),Color(0,0,0,200),Color(250,0,0,150),Color(0,0,0,100),Color(250,0,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.05, -- for how long each color will be drawn
		},
		{
			pos = Vector(-109,54,104.5),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(250,75,0,250),Color(0,0,0,255),Color(175,75,0,250),Color(0,0,0,200),Color(175,75,0,150),Color(0,0,0,100),Color(175,75,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.2, -- for how long each color will be drawn
		},
		--	Right Side
		{
			pos = Vector(19.5,-54,104.5),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(175,75,0,250),Color(0,0,0,255),Color(175,75,0,250),Color(0,0,0,200),Color(175,75,0,150),Color(0,0,0,100),Color(175,75,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.05, -- for how long each color will be drawn
		},
		{
			pos = Vector(-24,-54,104.5),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(250,0,0,250),Color(0,0,0,255),Color(250,0,0,250),Color(0,0,0,200),Color(250,0,0,150),Color(0,0,0,100),Color(250,0,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.2, -- for how long each color will be drawn
		},
		{
			pos = Vector(-72,-54,104.5),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(175,75,0,250),Color(0,0,0,255),Color(175,75,0,250),Color(0,0,0,200),Color(175,75,0,150),Color(0,0,0,100),Color(175,75,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.05, -- for how long each color will be drawn
		},
		{
			pos = Vector(-109,-54,104.5),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(250,0,0,250),Color(0,0,0,255),Color(250,0,0,250),Color(0,0,0,200),Color(250,0,0,150),Color(0,0,0,100),Color(250,0,0,50),Color(0,0,0,0)}, -- the script will go from color to coloru
			Speed = 0.2, -- for how long each color will be drawn
		},
		--	Rear Lights
		{
			pos = Vector(-127,40,104.5),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(250,0,0,250),Color(0,0,0,255),Color(250,0,0,250),Color(0,0,0,200),Color(250,0,0,150),Color(0,0,0,100),Color(250,0,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-127,-40,104.5),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(175,75,0,250),Color(0,0,0,255),Color(175,75,0,250),Color(0,0,0,200),Color(175,75,0,150),Color(0,0,0,100),Color(175,75,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-127,15,104.5),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(175,75,0,250),Color(0,0,0,255),Color(175,75,0,250),Color(0,0,0,200),Color(175,75,0,150),Color(0,0,0,100),Color(175,75,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.05, -- for how long each color will be drawn
		},
		{
			pos = Vector(-127,-15,104.5),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(250,0,0,250),Color(0,0,0,255),Color(250,0,0,250),Color(0,0,0,200),Color(250,0,0,150),Color(0,0,0,100),Color(250,0,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.05, -- for how long each color will be drawn
		},
		{
			pos = Vector(-127,-40,72),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(250,0,0,250),Color(0,0,0,255),Color(250,0,0,250),Color(0,0,0,200),Color(250,0,0,150),Color(0,0,0,100),Color(250,0,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-127,40,72),
			material = "sprites/light_glow02_add_noz",
			size = 60,
			Colors = {Color(175,75,0,250),Color(0,0,0,255),Color(175,75,0,250),Color(0,0,0,200),Color(175,75,0,150),Color(0,0,0,100),Color(175,75,0,50),Color(0,0,0,0)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "v92pd2ambulance", light_table)

local V = {
	Name = "Ambulance",
	Model = "models/jessev92/pd2/vehicles/ambulance_chassis.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "V92 :: Payday",
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1500,
		
		LightsTable = "v92pd2ambulance",
				
		CustomWheels = true,       	 -- You have to set this to "true" in order to define custom wheels
		CustomSuspensionTravel = 10,	--suspension travel limiter length
		
		--FrontWheelRadius = 18,		-- if you set CustomWheels to true then the script will figure the radius out by itself using the CustomWheelModel
		--RearWheelRadius = 20,
		
		CustomWheelModel = "models/jessev92/pd2/vehicles/ambulance_tyre_front.mdl",	-- since we create our own wheels we have to define a model. It has to have a collission model
		CustomWheelModel_R = "models/jessev92/pd2/vehicles/ambulance_tyre_rear.mdl",			-- different model for rear wheels?
		CustomWheelPosFL = Vector(103,-41,10),		-- set the position of the front left wheel. 
		CustomWheelPosFR = Vector(103,41,10),	-- position front right wheel
		CustomWheelPosRL = Vector(-54,-41,10),	-- rear left
		CustomWheelPosRR = Vector(-54,41,10),	-- rear right		NOTE: make sure the position actually matches the name. So FL is actually at the Front Left ,  FR Front Right, ...   if you do this wrong the wheels will spin in the wrong direction or the car will drive sideways/reverse
		CustomWheelAngleOffset = Angle(0,90,0),

		CustomMassCenter = Vector(0,0,0),		-- custom masscenter offset. The script creates a counter weight to make the masscenter exactly in the center of the wheels. However you can add an offset to this to create more body roll if you really have to...
		
		CustomSteerAngle = 35,				-- max clamped steering angle,

		SeatOffset = Vector(45,-23,68),
		SeatPitch = 0,
		SeatYaw = 90,
	
		-- everything below this comment is exactly the same as for normal vehicles. For more info take a look in simfphys_spawnlist.lua
		
		PassengerSeats = {
			{
				pos = Vector(55,-23,38),
				ang = Angle(0,270,0)
			},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(-95,-39,10),
				ang = Angle(90,165,0)
			},
		},

		FrontHeight = 0,
		FrontConstant = 75000,
		FrontDamping = 1000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 0,
		RearConstant = 75000,
		RearDamping = 1000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,
		
		TurnSpeed = 12,
		
		MaxGrip = 43,
		Efficiency = 1.2,
		GripOffset = -2,
		BrakePower = 20,
		
		IdleRPM = 750,	-- must be smaller than powerbandstart
		LimitRPM = 6000,  -- should never be smaller than PowerbandStart
		--Revlimiter = true,  -- LimitRPM MUST be greater than 2500 for this to work!
		PeakTorque = 100,
		PowerbandStart = 1500,  --must be greater than IdleRPM but dont set this too high because it will also be used as shifting point for the automatic transmission.
		PowerbandEnd = 5800, -- should never be greater but ideally 200rpm less than LimitRPM. Must be greater than powerbandstart
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 0.8,
		snd_idle = "simulated_vehicles/gta5_dukes/dukes_idle.wav",
		
		snd_low = "simulated_vehicles/gta5_dukes/dukes_low.wav",
		snd_low_revdown = "simulated_vehicles/gta5_dukes/dukes_revdown.wav",
		snd_low_pitch = 0.8,
		
		snd_mid = "simulated_vehicles/gta5_dukes/dukes_mid.wav",
		snd_mid_gearup = "simulated_vehicles/gta5_dukes/dukes_second.wav",
		snd_mid_pitch = 1,
		
		snd_horn = "simulated_vehicles/horn_3.wav",
		
		DifferentialGear = 0.6,
		Gears = {-0.12,0,0.12,0.21,0.32,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_payday2_ambulance", V )

------------------------------
-- Charger (GenSec)
------------------------------

local light_table = {
	L_HeadLampPos = Vector(120,35,35),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(120,-34,35),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-105,33,44),
	L_RearLampAng = Angle(0, 0, 0),

	R_RearLampPos = Vector(-105,-33,44),
	R_RearLampAng = Angle(0,0,0),
	
	Headlight_sprites = { 
		Vector(118,35,34),
		Vector(118,-34,34),
	},
	Headlamp_sprites = { 
		Vector(118,35,34),
		Vector(118,-34,34),
	},
	Rearlight_sprites = {
		Vector(-90,33,45),
		Vector(-90,-32,45),
	},
	Brakelight_sprites = {
		Vector(-90,28,44),
		Vector(-35,0,65),
		Vector(-90,-27,44),
	},
	Reverselight_sprites = {
		Vector(-90,28,44),
		Vector(-35,0,65),
		Vector(-90,-27,44),
	},
	FogLight_sprites = {
		{pos = Vector(53,37.5,59),material = "sprites/light_ignorez",size = 50},
		{pos = Vector(53,-36,59),material = "sprites/light_ignorez",size = 50},
	},
	ems_sounds = {"simulated_vehicles/police/siren_gta3.wav"},
	--ems_sounds = {"simulated_vehicles/police/siren_1.wav","simulated_vehicles/police/siren_2.wav","simulated_vehicles/police/siren_3.wav"},
	ems_sprites = {
		{
			pos = Vector(9.5,6.3,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0,250),Color(0,0,0,255),Color(0,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(9.5,12,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(0,0,0,250),Color(150,75,0,255),Color(0,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(9.5,16.5,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(0,0,0,250),Color(0,0,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		---
		{
			pos = Vector(9,22,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0,250),Color(0,0,0,255),Color(0,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(3,25,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(0,0,0,250),Color(150,75,0,255),Color(0,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-1,22,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(0,0,0,250),Color(0,0,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		---
		{
			pos = Vector(-2,16.5,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0,250),Color(0,0,0,255),Color(0,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-2,12,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(0,0,0,250),Color(150,75,0,255),Color(0,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-2,6.3,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(0,0,0,250),Color(0,0,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		---
		{
			pos = Vector(-2,-1,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0,250),Color(0,0,0,255),Color(0,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-2,-4,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(0,0,0,250),Color(150,75,0,255),Color(0,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-2,-9,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(0,0,0,250),Color(0,0,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		---
		{
			pos = Vector(-2,-14,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0,250),Color(0,0,0,255),Color(0,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-1,-20,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(0,0,0,250),Color(150,75,0,255),Color(0,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(3,-24,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(0,0,0,250),Color(0,0,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		---
		{
			pos = Vector(9,-20,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0,250),Color(0,0,0,255),Color(0,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(9.5,-14,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(0,0,0,250),Color(150,75,0,255),Color(0,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(9.5,-9,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(0,0,0,250),Color(0,0,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		---
		{
			pos = Vector(9,-6,72),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0,250),Color(0,0,0,255),Color(0,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "v92pd2chargergs", light_table)

local V = {
	Name = "GenSec Charger",
	Model = "models/jessev92/pd2/vehicles/charger_gensec_chassis.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "V92 :: Payday",
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1500,
		
		LightsTable = "v92pd2chargergs",
				
		CustomWheels = true,       	 -- You have to set this to "true" in order to define custom wheels
		CustomSuspensionTravel = 10,	--suspension travel limiter length
		
		--FrontWheelRadius = 18,		-- if you set CustomWheels to true then the script will figure the radius out by itself using the CustomWheelModel
		--RearWheelRadius = 20,
		
		CustomWheelModel = "models/jessev92/pd2/vehicles/charger_gensec_tyre.mdl",	-- since we create our own wheels we have to define a model. It has to have a collission model
		--CustomWheelModel_R = "",			-- different model for rear wheels?
		CustomWheelPosFL = Vector(91,35,15),		-- set the position of the front left wheel. 
		CustomWheelPosFR = Vector(91,-35,15),	-- position front right wheel
		CustomWheelPosRL = Vector(-52,35,15),	-- rear left
		CustomWheelPosRR = Vector(-52,-35,15),	-- rear right		NOTE: make sure the position actually matches the name. So FL is actually at the Front Left ,  FR Front Right, ...   if you do this wrong the wheels will spin in the wrong direction or the car will drive sideways/reverse
		CustomWheelAngleOffset = Angle(0,90,0),

		CustomMassCenter = Vector(0,0,0),		-- custom masscenter offset. The script creates a counter weight to make the masscenter exactly in the center of the wheels. However you can add an offset to this to create more body roll if you really have to...
		
		CustomSteerAngle = 35,				-- max clamped steering angle,

		SeatOffset = Vector(12,-18.5,52),
		SeatPitch = 0,
		SeatYaw = 90,
	
		-- everything below this comment is exactly the same as for normal vehicles. For more info take a look in simfphys_spawnlist.lua
		
		PassengerSeats = {
			{
				pos = Vector(15,-18.5,20),
				ang = Angle(0,270,0)
			},
			{
				pos = Vector(-17,18.5,20),
				ang = Angle(0,270,0)
			},
			{
				pos = Vector(-17,-18.5,20),
				ang = Angle(0,270,0)
			},
			{
				pos = Vector(-17,0,20),
				ang = Angle(0,270,0)
			},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(-98,-25,15),
				ang = Angle(90,180,0)
			},
			{
				pos = Vector(-98,25,15),
				ang = Angle(90,180,0)
			},
		},

		FrontHeight = 5,
		FrontConstant = 75000,
		FrontDamping = 1000,
		FrontRelativeDamping = 1000,
		
		RearHeight = 5,
		RearConstant = 75000,
		RearDamping = 1000,
		RearRelativeDamping = 1000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,
		
		TurnSpeed = 12,
		
		MaxGrip = 43,
		Efficiency = 1.2,
		GripOffset = -2,
		BrakePower = 20,
	
		IdleRPM = 750,	-- must be smaller than powerbandstart
		LimitRPM = 6000,  -- should never be smaller than PowerbandStart
		--Revlimiter = true,  -- LimitRPM MUST be greater than 2500 for this to work!
		PeakTorque = 270,
		PowerbandStart = 2200,  --must be greater than IdleRPM but dont set this too high because it will also be used as shifting point for the automatic transmission.
		PowerbandEnd = 5800, -- should never be greater but ideally 200rpm less than LimitRPM. Must be greater than powerbandstart

		Turbocharged = true,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,

		snd_pitch = 0.9,
		snd_idle = "simulated_vehicles/jalopy/jalopy_idle.wav",
		
		snd_low = "simulated_vehicles/jalopy/jalopy_low.wav",
		snd_low_revdown = "simulated_vehicles/jalopy/jalopy_revdown.wav",
		snd_low_pitch = 0.95,
		
		snd_mid = "simulated_vehicles/jalopy/jalopy_mid.wav",
		snd_mid_gearup = "simulated_vehicles/jalopy/jalopy_second.wav",
		snd_mid_pitch = 1.1,
		
		Sound_Idle = "simulated_vehicles/jalopy/jalopy_idle.wav",
		Sound_IdlePitch = 0.95,
		
		Sound_Mid = "simulated_vehicles/jalopy/jalopy_mid.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 55,
		Sound_MidFadeOutRate = 0.25,
		
		Sound_High = "simulated_vehicles/jalopy/jalopy_high.wav",
		Sound_HighPitch = 0.75,
		Sound_HighVolume = 0.9,
		Sound_HighFadeInRPMpercent = 55,
		Sound_HighFadeInRate = 0.4,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_3.wav",
		
		DifferentialGear = 0.6,
		Gears = {-0.12,0,0.12,0.21,0.32,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_payday2_chargergs", V )

------------------------------
-- SWAT Truck
------------------------------

local light_table = {
	L_HeadLampPos = Vector(113,32,48),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(113,-32,48),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-105,33,44),
	L_RearLampAng = Angle(0, 0, 0),

	R_RearLampPos = Vector(-105,-33,44),
	R_RearLampAng = Angle(0,0,0),
	
	Headlight_sprites = { 
		Vector(113,32,52),
		Vector(113,-32,52),
	},
	Headlamp_sprites = { 
		Vector(113,32,42),
		Vector(113,-32,42),
	},
	Rearlight_sprites = {
		Vector(-132,32,25),
		Vector(-132,-34,25),
	},
	Brakelight_sprites = {
		Vector(-132,32,25),
		Vector(-132,-34,25),
	},
	Reverselight_sprites = {
		Vector(-132,32,29),
		Vector(-132,-34,29),
	},
	FogLight_sprites = {
		{pos = Vector(50,31.5,104),material = "sprites/light_ignorez",size = 50},
		{pos = Vector(50,-33,104),material = "sprites/light_ignorez",size = 50},
	},
	--ems_sounds = {"simulated_vehicles/police/siren_gta3.wav"},
	ems_sounds = {"simulated_vehicles/police/siren_1.wav","simulated_vehicles/police/siren_2.wav","simulated_vehicles/police/siren_3.wav"},
	ems_sprites = {
	
		--	front
		{
			pos = Vector(50,32,98),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(250,0,0,250),Color(0,0,250,255),Color(250,250,250,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},

		{
			pos = Vector(50,12,98),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(250,250,250,250),Color(250,0,0,255),Color(0,0,250,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},

		{
			pos = Vector(50,3,98),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(0,0,250,250),Color(250,250,250,255),Color(250,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		
		{
			pos = Vector(50,-6,98),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(0,0,250,250),Color(250,250,250,255),Color(250,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},

		{
			pos = Vector(50,-14,98),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(250,250,250,250),Color(250,0,0,255),Color(0,0,250,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},

		{
			pos = Vector(50,-35,98),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(250,0,0,250),Color(0,0,250,255),Color(250,250,250,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
	
		-- rear
		{
			pos = Vector(-132,22,97),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(250,250,250,250),Color(250,0,0,255),Color(0,0,250,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},

		{
			pos = Vector(-132,13.5,97),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(0,0,250,250),Color(250,250,250,255),Color(250,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-132,5,97),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(250,0,0,250),Color(0,0,250,255),Color(250,250,250,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		
		-- rear right
		{
			pos = Vector(-132,-25,97),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(250,250,250,250),Color(250,0,0,255),Color(0,0,250,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},

		{
			pos = Vector(-132,-16.5,97),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(0,0,250,250),Color(250,250,250,255),Color(250,0,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-132,-8,97),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(250,0,0,250),Color(0,0,250,255),Color(250,250,250,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		
		--	top
		{
			pos = Vector(32,22,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(250,0,0,250),Color(0,0,250,255),Color(250,250,250,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},

		{
			pos = Vector(32,13,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(250,250,250,250),Color(250,0,0,255),Color(0,0,250,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},

		{
			pos = Vector(32,3.5,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(0,0,250,250),Color(250,250,250,255),Color(250,0,0,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},

		{
			pos = Vector(32,-6,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(250,0,0,250),Color(0,0,250,255),Color(250,250,250,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},

		{
			pos = Vector(32,-15.5,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(250,250,250,250),Color(250,0,0,255),Color(0,0,250,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},

		{
			pos = Vector(32,-25,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(0,0,250,250),Color(250,250,250,255),Color(250,0,0,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},
		
		--	side right
		
		{
			pos = Vector(30,-29,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(250,0,0,250),Color(0,0,250,255),Color(250,250,250,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},

		{
			pos = Vector(25,-29,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(250,250,250,250),Color(250,0,0,255),Color(0,0,250,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},

		{
			pos = Vector(20,-29,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(0,0,250,250),Color(250,250,250,255),Color(250,0,0,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},
		
		--	backtop

		{
			pos = Vector(18,-25,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(250,0,0,250),Color(0,0,250,255),Color(250,250,250,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},
		{
			pos = Vector(18,-15.5,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(250,250,250,250),Color(250,0,0,255),Color(0,0,250,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},
		{
			pos = Vector(18,-6,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(0,0,250,250),Color(250,250,250,255),Color(250,0,0,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},
		{
			pos = Vector(18,3.5,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(250,0,0,250),Color(0,0,250,255),Color(250,250,250,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},
		{
			pos = Vector(18,13,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(250,250,250,250),Color(250,0,0,255),Color(0,0,250,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},
		{
			pos = Vector(18,22,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(0,0,250,250),Color(250,250,250,255),Color(250,0,0,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},
		
		--	side left
		

		{
			pos = Vector(20,26,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(250,0,0,250),Color(0,0,250,255),Color(250,250,250,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},

		{
			pos = Vector(25,26,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(250,250,250,250),Color(250,0,0,255),Color(0,0,250,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},
		{
			pos = Vector(30,26,104),
			material = "sprites/light_glow02_add_noz",
			size = 30,
			Colors = {Color(0,0,250,250),Color(250,250,250,255),Color(250,0,0,250)}, -- the script will go from color to color
			Speed = 0.1, -- for how long each color will be drawn
		},
		
	}
}
list.Set( "simfphys_lights", "v92pd2swattruck", light_table)

local V = {
	Name = "SWAT Truck",
	Model = "models/jessev92/pd2/vehicles/swattruck_chassis.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "V92 :: Payday",
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1500,
		
		LightsTable = "v92pd2swattruck",
				
		CustomWheels = true,       	 -- You have to set this to "true" in order to define custom wheels
		CustomSuspensionTravel = 10,	--suspension travel limiter length
		
		--FrontWheelRadius = 18,		-- if you set CustomWheels to true then the script will figure the radius out by itself using the CustomWheelModel
		--RearWheelRadius = 20,
		
		CustomWheelModel = "models/jessev92/pd2/vehicles/swattruck_tyre_front.mdl",	-- since we create our own wheels we have to define a model. It has to have a collission model
		CustomWheelModel_R = "models/jessev92/pd2/vehicles/swattruck_tyre_rear.mdl",			-- different model for rear wheels?
		CustomWheelPosFL = Vector(80,-43,15),		-- set the position of the front left wheel. 
		CustomWheelPosFR = Vector(80,43,15),	-- position front right wheel
		CustomWheelPosRL = Vector(-91,-42,15),	-- rear left
		CustomWheelPosRR = Vector(-91,42,15),	-- rear right		NOTE: make sure the position actually matches the name. So FL is actually at the Front Left ,  FR Front Right, ...   if you do this wrong the wheels will spin in the wrong direction or the car will drive sideways/reverse
		CustomWheelAngleOffset = Angle(0,90,0),

		CustomMassCenter = Vector(0,0,0),		-- custom masscenter offset. The script creates a counter weight to make the masscenter exactly in the center of the wheels. However you can add an offset to this to create more body roll if you really have to...
		
		CustomSteerAngle = 35,				-- max clamped steering angle,

		SeatOffset = Vector(20,-18.5,75),
		SeatPitch = 0,
		SeatYaw = 90,
	
		-- everything below this comment is exactly the same as for normal vehicles. For more info take a look in simfphys_spawnlist.lua
		
		PassengerSeats = {
			{
				pos = Vector(20,-18.5,45),
				ang = Angle(0,270,0)
			},
			{
				pos = Vector(-17,18.5,52),
				ang = Angle(0,90,0)
			},
			{
				pos = Vector(-17,-18.5,52),
				ang = Angle(0,90,0)
			},
			{
				pos = Vector(-17,0,52),
				ang = Angle(0,90,0)
			},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(-98,-25,15),
				ang = Angle(90,180,0)
			},
			{
				pos = Vector(-98,25,15),
				ang = Angle(90,180,0)
			},
		},

		FrontHeight = 5,
		FrontConstant = 25000,
		FrontDamping = 2500,
		FrontRelativeDamping = 2500,
		
		RearHeight = 5,
		RearConstant = 25000,
		RearDamping = 2500,
		RearRelativeDamping = 2500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 600,
			
		TurnSpeed = 8,		--how fast the steering will move to its target angle
		
		MaxGrip = 70,	--max available grip
		Efficiency = 1.8,	--this defines how good the wheels can put the engine power to the ground. this also increases engine power and brake force.  Its a cheap way to make your car accelerate faster without having to deal with griploss
		GripOffset = 0,	-- a negative value will get more understeer, a positive value more oversteer. NOTE: this will not affect under/oversteer caused by engine power.   This value can be found as Tractionbias in the EDIT properties menu however it is divided by MaxGrip there
		BrakePower = 30,		--how strong the brakes are, NOTE: this can be higher than MaxGrip. Sorry folks but i couldnt stand how people fail to realize that braking while turning decreases grip and therefore causes understeer. So i excluded it from the grip calculations

		IdleRPM = 750,	-- must be smaller than powerbandstart
		LimitRPM = 6000,  -- should never be smaller than PowerbandStart
		--Revlimiter = true,  -- LimitRPM MUST be greater than 2500 for this to work!
		PeakTorque = 100,
		PowerbandStart = 1500,  --must be greater than IdleRPM but dont set this too high because it will also be used as shifting point for the automatic transmission.
		PowerbandEnd = 5800, -- should never be greater but ideally 200rpm less than LimitRPM. Must be greater than powerbandstart
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,
	
		snd_horn = "simulated_vehicles/horn_2.wav",
		
		Sound_Idle = "simulated_vehicles/alfaromeo/alfaromeo_idle.wav",
		Sound_IdlePitch = 1,
			
		snd_low ="simulated_vehicles/alfaromeo/alfaromeo_low.wav",
		snd_low_pitch = 0.35,

		snd_mid = "simulated_vehicles/alfaromeo/alfaromeo_mid.wav",
		snd_mid_gearup = "simulated_vehicles/alfaromeo/alfaromeo_second.wav",
		snd_mid_pitch = 0.5,

		Sound_Mid = "simulated_vehicles/alfaromeo/alfaromeo_low.wav",
		Sound_MidPitch = 0.5,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 100,
		Sound_MidFadeOutRate = 1,
		
		Sound_High = "",
		
		Sound_Throttle = "",
		
		DifferentialGear = 0.22,
		Gears = {-0.1,0,0.1,0.2,0.3}	-- 0.15 means 1 revolution of the engine = 0.15 of the driveshaft
		-- First Gear should always be reverse, second neutral, third is the actual first gear.

	}
}
list.Set( "simfphys_vehicles", "sim_fphys_payday2_swattruck", V )

------------------------------
-- Semi-Truck
------------------------------

local light_table = {
	L_HeadLampPos = Vector(196,43,53.5),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(196,-43,53.5),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-105,33,44),
	L_RearLampAng = Angle(0, 0, 0),

	R_RearLampPos = Vector(-105,-33,44),
	R_RearLampAng = Angle(0,0,0),

	Headlight_sprites = { 
		Vector(196,43,53.5),
		Vector(196,35,53.5),
		Vector(196,-35,53.5),
		Vector(196,-43,53.5),
	},
	Headlamp_sprites = { 
		Vector(196,43,53.5),
		Vector(196,35,53.5),
		Vector(196,-35,53.5),
		Vector(196,-43,53.5),
	},
	
	Rearlight_sprites = {
		Vector(-203,49,41),
		Vector(-203,-49,41),
	},
	Brakelight_sprites = {
		Vector(-203,49,41),
		Vector(-203,-49,41),
		Vector(-40,34.5,63.5),
		Vector(-40,34.5,90),
		Vector(-40,34.5,114),
		Vector(-40,-34.5,63.5),
		Vector(-40,-34.5,90),
		Vector(-40,-34.5,114),
	},
	
	Reverselight_sprites = {
		Vector(-203,31,41),
		Vector(-203,-31,41),
		Vector(-40,34.5,63.5),
		Vector(-40,34.5,90),
		Vector(-40,34.5,114),
		Vector(-40,-34.5,63.5),
		Vector(-40,-34.5,90),
		Vector(-40,-34.5,114),
	},
	FogLight_sprites = {
		{pos = Vector(196,43,53.5),material = "sprites/light_ignorez",size = 50},
		{pos = Vector(196,35,53.5),material = "sprites/light_ignorez",size = 50},
		{pos = Vector(196,-35,53.5),material = "sprites/light_ignorez",size = 50},
		{pos = Vector(196,-43,53.5),material = "sprites/light_ignorez",size = 50},
	},
	ems_sounds = {"common/null.wav"},
	--ems_sounds = {"simulated_vehicles/police/siren_1.wav","simulated_vehicles/police/siren_2.wav","simulated_vehicles/police/siren_3.wav"},
	ems_sprites = {
	
	
		----- Front Roof Rack
		{
			pos = Vector(100,32,135),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(100,12.5,135),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(100,0,135),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(100,-12.5,135),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(100,-32,135),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
	
		----- Top Roof Rack
		{
			pos = Vector(14,32.5,167),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(14,-32.5,167),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(22,12.5,167),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(22,-12.5,167),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(24,0,167),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
	
		----- Fender Sides
		{
			pos = Vector(165,42.5,67),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(165,-42.5,67),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		
		----- Air Thing Left
		{
			pos = Vector(125,38.5,67),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(125,38.5,70),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(125,38.5,73),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(125,38.5,76),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(125,38.5,79),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(125,38.5,82),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(125,38.5,85),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(125,38.5,88),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(125,38.5,91),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		----- Air Thing Right
		{
			pos = Vector(125,-38.5,67),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(125,-38.5,70),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(125,-38.5,73),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(125,-38.5,76),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(125,-38.5,79),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(125,-38.5,82),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(125,-38.5,85),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(125,-38.5,88),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(125,-38.5,91),
			material = "sprites/light_glow02_add_noz",
			size = 15,
			Colors = {Color(150,75,0),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		----- Running Lights Left
		{
			pos = Vector(56,-53.5,25.5),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(70,-53.5,25.5),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(84,-53.5,25.5),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(98,-53.5,25.5),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(113,-39,29.5),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(113,-39,39),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(113,-39,48),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(101,-40,56),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(80,-42,56),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(61,-44,56),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(34,-55,56),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(16,-55,56),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-2,-55,56),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-20,-55,56),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-38,-55,56),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		----- Running Lights Right
		{
			pos = Vector(56,53.5,25.5),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(70,53.5,25.5),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(84,53.5,25.5),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(98,53.5,25.5),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(113,39,29.5),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(113,39,39),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(113,39,48),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(101,40,56),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(80,42,56),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(61,44,56),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(34,55,56),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(16,55,56),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-2,55,56),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-20,55,56),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-38,55,56),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		----- Rear Bumper
		{
			pos = Vector(-203,39,41),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-203,-39,41),
			material = "sprites/light_glow02_add_noz",
			size = 50,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		
	}
}
list.Set( "simfphys_lights", "v92pd2semitruck", light_table)

local V = {
	Name = "Semi-Truck",
	Model = "models/jessev92/pd2/vehicles/semitruck_chassis.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "V92 :: Payday",
	SpawnAngleOffset = 90,

	Members = {
		Mass = 5000,
		
		LightsTable = "v92pd2semitruck",
				
		CustomWheels = true,       	 -- You have to set this to "true" in order to define custom wheels
		CustomSuspensionTravel = 10,	--suspension travel limiter length
		
		--FrontWheelRadius = 18,		-- if you set CustomWheels to true then the script will figure the radius out by itself using the CustomWheelModel
		--RearWheelRadius = 20,

		CustomWheelModel = "models/jessev92/pd2/vehicles/semitruck_tyre_front.mdl",	-- since we create our own wheels we have to define a model. It has to have a collission model
		CustomWheelModel_R = "models/jessev92/pd2/vehicles/semitruck_tyre_rear.mdl",			-- different model for rear wheels?
		CustomWheelPosFL = Vector(163,-45,22),		-- set the position of the front left wheel. 
		CustomWheelPosFR = Vector(163,45,22),	-- position front right wheel
		CustomWheelPosML = Vector(-117,-43,22), -- middle left
		CustomWheelPosMR = Vector(-117,43,22), -- middle right
		CustomWheelPosRL = Vector(-170,-43,22),	-- rear left
		CustomWheelPosRR = Vector(-170,43,22),	-- rear right		NOTE: make sure the position actually matches the name. So FL is actually at the Front Left ,  FR Front Right, ...   if you do this wrong the wheels will spin in the wrong direction or the car will drive sideways/reverse
		CustomWheelAngleOffset = Angle(0,90,0),

		CustomMassCenter = Vector(0,0,0),		-- custom masscenter offset. The script creates a counter weight to make the masscenter exactly in the center of the wheels. However you can add an offset to this to create more body roll if you really have to...
		
		CustomSteerAngle = 35,				-- max clamped steering angle,

		SeatOffset = Vector(60,-22,110),
		SeatPitch = 0,
		SeatYaw = 90,
	
		-- everything below this comment is exactly the same as for normal vehicles. For more info take a look in simfphys_spawnlist.lua

		PassengerSeats = {
			{
				pos = Vector(66,-22,85),
				ang = Angle(0,270,0)
			},
			{
				pos = Vector(0,0,85),
				ang = Angle(0,270,0)
			},
			{
				pos = Vector(0,22,85),
				ang = Angle(0,270,0)
			},
			{
				pos = Vector(0,-22,85),
				ang = Angle(0,270,0)
			},
		},
		
		ExhaustPositions = {
			{
				pos = Vector(50,54,180),
				ang = Angle(90,180,0)
			},
			{
				pos = Vector(50,-54,180),
				ang = Angle(90,180,0)
			},
		},

		StrengthenSuspension = true,
		
		FrontHeight = 24,
		FrontConstant = 32000,
		FrontDamping = 12000,
		FrontRelativeDamping = 12000,
		
		RearHeight = 24,
		RearConstant = 32000,
		RearDamping = 12000,
		RearRelativeDamping = 12000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 600,
		
		TurnSpeed = 8,
		
		MaxGrip = 75,
		Efficiency = 1,
		GripOffset = -1,
		BrakePower = 80,

		IdleRPM = 750,	-- must be smaller than powerbandstart
		LimitRPM = 6000,  -- should never be smaller than PowerbandStart
		--Revlimiter = true,  -- LimitRPM MUST be greater than 2500 for this to work!
		PeakTorque = 100,
		PowerbandStart = 1500,  --must be greater than IdleRPM but dont set this too high because it will also be used as shifting point for the automatic transmission.
		PowerbandEnd = 5800, -- should never be greater but ideally 200rpm less than LimitRPM. Must be greater than powerbandstart
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,
	
		snd_horn = "simulated_vehicles/horn_7.wav",
		
		Sound_Idle = "simulated_vehicles/alfaromeo/alfaromeo_idle.wav",
		Sound_IdlePitch = 1,
			
		snd_low ="simulated_vehicles/alfaromeo/alfaromeo_low.wav",
		snd_low_pitch = 0.35,

		snd_mid = "simulated_vehicles/alfaromeo/alfaromeo_mid.wav",
		snd_mid_gearup = "simulated_vehicles/alfaromeo/alfaromeo_second.wav",
		snd_mid_pitch = 0.5,

		Sound_Mid = "simulated_vehicles/alfaromeo/alfaromeo_low.wav",
		Sound_MidPitch = 0.5,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 100,
		Sound_MidFadeOutRate = 1,
		
		Sound_High = "",
		
		Sound_Throttle = "",
		
		DifferentialGear = 0.22,
		Gears = {-0.1,0,0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.5}

	}
}
list.Set( "simfphys_vehicles", "sim_fphys_payday2_semitruck", V )

------------------------------
-- Metro Bus
------------------------------

local light_table = {
	L_HeadLampPos = Vector(254,34,36),
	L_HeadLampAng = Angle(0,0,0),

	R_HeadLampPos = Vector(254,-34,36),
	R_HeadLampAng = Angle(0,0,0),

	L_RearLampPos = Vector(-105,33,44),
	L_RearLampAng = Angle(0, 0, 0),

	R_RearLampPos = Vector(-105,-33,44),
	R_RearLampAng = Angle(0,0,0),

	Headlight_sprites = { 
		Vector(254,34.5,36),
		Vector(254,-34.5,36),
		Vector(254,43,36),
		Vector(254,-43,36),
	},
	Headlamp_sprites = { 
		Vector(254,34.5,36),
		Vector(254,-34.5,36),
		Vector(254,43,36),
		Vector(254,-43,36),
	},
	
	Rearlight_sprites = {
		Vector(-269,49,49.5),
		Vector(-269,-49,49.5),
		Vector(-269,49,57),
		Vector(-269,-49,57),
		Vector(-264,50,118),
		Vector(-264,-50,118),
		Vector(-263,12,132),
		Vector(-263,0,132),
		Vector(-263,-12,132),
	},
	Brakelight_sprites = {
		Vector(-269,49,49.5),
		Vector(-269,-49,49.5),
		Vector(-269,49,57),
		Vector(-269,-49,57),
		Vector(-264,50,118),
		Vector(-264,-50,118),
		Vector(-263,12,132),
		Vector(-263,0,132),
		Vector(-263,-12,132),
	},
	
	Reverselight_sprites = {
		Vector(-269,49,42),
		Vector(-269,-49,42),
	},
	FogLight_sprites = {
		{pos = Vector(254,43,36),material = "sprites/light_ignorez",size = 50},
		{pos = Vector(254,34.5,36),material = "sprites/light_ignorez",size = 50},
		{pos = Vector(254,-34.5,36),material = "sprites/light_ignorez",size = 50},
		{pos = Vector(254,-43,36),material = "sprites/light_ignorez",size = 50},
	},
	ems_sounds = {"common/null.wav"},
	--ems_sounds = {"simulated_vehicles/police/siren_1.wav","simulated_vehicles/police/siren_2.wav","simulated_vehicles/police/siren_3.wav"},
	ems_sprites = {
		{
			pos = Vector(254,44,132),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(254,-44,132),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(254,12,132),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(254,-12,132),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(254,0,132),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(254,38.5,44),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(254,-38.5,44),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(250,53,36),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(250,-53,36),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(246,54,117),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(246,-54,117),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(75,54,117),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(75,-54,117),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(133,54,44),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(133,-54,44),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-95,54,117),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-95,-54,117),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-113,54,44),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-113,-54,44),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-265,49,64.5),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-265,-49,64.5),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-265,49,112),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
		{
			pos = Vector(-265,-49,112),
			material = "sprites/light_glow02_add_noz",
			size = 35,
			Colors = {Color(150,75,0,250),Color(150,75,0,255),Color(150,75,0,250)}, -- the script will go from color to color
			Speed = 0.15, -- for how long each color will be drawn
		},
	}
}
list.Set( "simfphys_lights", "v92pd2metrobus", light_table)

local V = {
	Name = "Metro Bus",
	Model = "models/jessev92/pd2/vehicles/metrobus_chassis.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = "V92 :: Payday",
	SpawnAngleOffset = 90,

	Members = {
		Mass = 5000,
		
		LightsTable = "v92pd2metrobus",
				
		CustomWheels = true,       	 -- You have to set this to "true" in order to define custom wheels
		CustomSuspensionTravel = 10,	--suspension travel limiter length
		
		--FrontWheelRadius = 18,		-- if you set CustomWheels to true then the script will figure the radius out by itself using the CustomWheelModel
		--RearWheelRadius = 20,

		CustomWheelModel = "models/jessev92/pd2/vehicles/metrobus_tyre_front.mdl",	-- since we create our own wheels we have to define a model. It has to have a collission model
		CustomWheelModel_R = "models/jessev92/pd2/vehicles/metrobus_tyre_rear.mdl",			-- different model for rear wheels?
		CustomWheelPosFL = Vector(159,-48,22),		-- set the position of the front left wheel. 
		CustomWheelPosFR = Vector(159,48,22),	-- position front right wheel
		CustomWheelPosRL = Vector(-142,-43,22),	-- rear left
		CustomWheelPosRR = Vector(-142,43,22),	-- rear right		NOTE: make sure the position actually matches the name. So FL is actually at the Front Left ,  FR Front Right, ...   if you do this wrong the wheels will spin in the wrong direction or the car will drive sideways/reverse
		CustomWheelAngleOffset = Angle(0,90,0),

		CustomMassCenter = Vector(0,0,0),		-- custom masscenter offset. The script creates a counter weight to make the masscenter exactly in the center of the wheels. However you can add an offset to this to create more body roll if you really have to...
		
		CustomSteerAngle = 35,				-- max clamped steering angle,

		SeatOffset = Vector(209,-33,95),
		SeatPitch = 0,
		SeatYaw = 90,
	
		-- everything below this comment is exactly the same as for normal vehicles. For more info take a look in simfphys_spawnlist.lua

		PassengerSeats = {
			{
				pos = Vector(180,33,50),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(180,-33,50),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(165,33,50),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(165,-33,50),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(150,33,50),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(150,-33,50),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(120,33,50),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(120,-33,50),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(100,33,50),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(100,-33,50),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(70,33,50),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(70,-33,50),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(52,33,50),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(52,-33,50),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(35,33,50),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(35,-33,50),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(5,33,50),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(5,-33,50),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-15,33,50),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(-15,-33,50),
				ang = Angle(0,0,0)
			},
			{
				pos = Vector(-35,33,50),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(-35,-33,50),
				ang = Angle(0,0,0)
			},
			
			{
				pos = Vector(-65,33,50),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(-85,33,50),
				ang = Angle(0,180,0)
			},
			{
				pos = Vector(-105,33,50),
				ang = Angle(0,180,0)
			},
			--]]
		},
		
		ExhaustPositions = {
			{
				pos = Vector(-267,-48,132),
				ang = Angle(90,180,0)
			},
		},

		StrengthenSuspension = true,
		
		FrontHeight = 24,
		FrontConstant = 32000,
		FrontDamping = 12000,
		FrontRelativeDamping = 12000,
		
		RearHeight = 24,
		RearConstant = 32000,
		RearDamping = 12000,
		RearRelativeDamping = 12000,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 600,
		
		TurnSpeed = 8,
		
		MaxGrip = 75,
		Efficiency = 1,
		GripOffset = -1,
		BrakePower = 80,

		IdleRPM = 750,	-- must be smaller than powerbandstart
		LimitRPM = 6000,  -- should never be smaller than PowerbandStart
		--Revlimiter = true,  -- LimitRPM MUST be greater than 2500 for this to work!
		PeakTorque = 100,
		PowerbandStart = 1500,  --must be greater than IdleRPM but dont set this too high because it will also be used as shifting point for the automatic transmission.
		PowerbandEnd = 5800, -- should never be greater but ideally 200rpm less than LimitRPM. Must be greater than powerbandstart
		Turbocharged = false,
		Supercharged = false,
		
		PowerBias = 1,
		
		EngineSoundPreset = 0,
	
		snd_horn = "simulated_vehicles/horn_4.wav",
		
		Sound_Idle = "simulated_vehicles/alfaromeo/alfaromeo_idle.wav",
		Sound_IdlePitch = 1,
			
		snd_low ="simulated_vehicles/alfaromeo/alfaromeo_low.wav",
		snd_low_pitch = 0.35,

		snd_mid = "simulated_vehicles/alfaromeo/alfaromeo_mid.wav",
		snd_mid_gearup = "simulated_vehicles/alfaromeo/alfaromeo_second.wav",
		snd_mid_pitch = 0.5,

		Sound_Mid = "simulated_vehicles/alfaromeo/alfaromeo_low.wav",
		Sound_MidPitch = 0.5,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 100,
		Sound_MidFadeOutRate = 1,
		
		Sound_High = "",
		
		Sound_Throttle = "",
		
		DifferentialGear = 0.22,
		Gears = {-0.1,0,0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.5}

	}
}
list.Set( "simfphys_vehicles", "sim_fphys_payday2_metrobus", V )
