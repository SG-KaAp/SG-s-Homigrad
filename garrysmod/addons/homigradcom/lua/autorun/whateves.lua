local Category = "Half Life 2 - Drivable Vehicles"

local light_table = {
	L_HeadLampPos = Vector(-31.7,85,20),
	L_HeadLampAng = Angle(15,90,0),
	R_HeadLampPos = Vector(31.2,85,20),
	R_HeadLampAng = Angle(15,90,0),
	
	L_RearLampPos = Vector(-29.7,-110,32),
	L_RearLampAng = Angle(30,-90,0),
	R_RearLampPos = Vector(30.2,-110,32),
	R_RearLampAng = Angle(30,-90,0),
	
	Headlight_sprites = { 
		{pos = Vector(-31.7,85,29),material = "sprites/light_ignorez",size = 40},
		{pos = Vector(-31.7,85,29),size = 55},
		
		{pos = Vector(31.2,85,29),material = "sprites/light_ignorez",size = 40},
		{pos = Vector(31.2,85,29),size = 55},
	},
	Headlamp_sprites = { 
		{pos = Vector(31.2,85,29),size = 80},
		{pos = Vector(-31.7,85,29),size = 80},
	},
	Rearlight_sprites = {
		Vector(-29.7,-110,32),
		Vector(30.2,-110,32),
	},
	Reverselight_sprites = {
		Vector(-29.7,-110,33),
		Vector(30.2,-110,33),
	},
	
	Turnsignal_sprites = {
		Left = {
			Vector(-29.7,-110,29),
			Vector(-31.7,85,20),
		},
		Right = {
			Vector(30.2,-110,29),
			Vector(31.2,85,20),
		},
	}
}
list.Set( "simfphys_lights", "gaztf", light_table)


local light_table = {
	L_HeadLampPos = Vector(-31.7,85,20),
	L_HeadLampAng = Angle(15,90,0),
	
	L_RearLampPos = Vector(-29,-110,32.7),
	L_RearLampAng = Angle(30,-90,0),
	R_RearLampPos = Vector(33,-110,27),
	R_RearLampAng = Angle(30,-90,0),
	
	Headlight_sprites = { 
		{pos = Vector(-31.7,85,29),material = "sprites/light_ignorez",size = 40},
		{pos = Vector(-31.7,85,29),size = 55},
	},
	Headlamp_sprites = { 
		{pos = Vector(-31.7,85,29),size = 80},
	},
	Rearlight_sprites = {
		Vector(-29,-110,32.7),
		Vector(33,-110,30),
	},
	Reverselight_sprites = {
		Vector(-29,-110,33.7),
		Vector(33,-110,31),
	},
	
	Turnsignal_sprites = {
		Left = {
			Vector(-29,-110,29.7),
			Vector(-31.7,85,20),
		},
		Right = {
			Vector(33,-110,27),
			Vector(34.2,85,19),
		},
	},
}
list.Set( "simfphys_lights", "jgaztf", light_table)

local light_table = {
	L_HeadLampPos = Vector(-36.74,121.35,45.43),
	L_HeadLampAng = Angle(15,90,0),
	R_HeadLampPos = Vector(32.15,118.88,45.13),
	R_HeadLampAng = Angle(15,90,0),
	
	L_RearLampPos = Vector(-47,-133.97,28.14),
	L_RearLampAng = Angle(30,-90,0),
	R_RearLampPos = Vector(44.13,-134.42,27.34),
	R_RearLampAng = Angle(30,-90,0),
	
	Headlight_sprites = { 
		{pos = Vector(-36.74,121.35,45.43),material = "sprites/light_ignorez",size = 40},
		{pos = Vector(-36.74,121.35,45.43),size = 55},
		
		{pos = Vector(32.15,118.88,45.13),material = "sprites/light_ignorez",size = 40},
		{pos = Vector(32.15,118.88,45.13),size = 55},
	},
	Headlamp_sprites = { 
		{pos = Vector(-36.74,121.35,45.43),size = 80},
		{pos = Vector(32.15,118.88,45.13),size = 80},
	},
	Rearlight_sprites = {
		Vector(-47,-133.97,28.14),
		Vector(44.13,-134.42,27.34),
	},
	Reverselight_sprites = {
		Vector(32.33,-134.11,27.34),
	},
	
	Turnsignal_sprites = {
		Left = {
			Vector(-39.88,119.03,66.5),
		},
		Right = {
			Vector(36.11,119.71,66.5),
		},
		
		TurnBrakeLeft = {
			Vector(-47,-133.97,28.14),
		},
		
		TurnBrakeRight = {
			Vector(44.13,-134.42,27.34),
		},
	},
}
list.Set( "simfphys_lights", "liaz", light_table)

local light_table = {
	Turnsignal_sprites = {
		Left = {
			Vector(-22.7,-100,24),
		},
		Right = {
			Vector(23.2,-100,24),
		},
	}
}
list.Set( "simfphys_lights", "wamoskvich", light_table)

local light_table = {
	Turnsignal_sprites = {
		Left = {
			Vector(-22.7,-100,29),
		},
		Right = {
			Vector(23.2,-100,29),
		},
	}
}
list.Set( "simfphys_lights", "jmoskvich", light_table)

local light_table = {
	L_HeadLampPos = Vector(-28.7,73,31),
	L_HeadLampAng = Angle(15,90,0),
	R_HeadLampPos = Vector(28.7,73,31),
	R_HeadLampAng = Angle(15,90,0),
	
	L_RearLampPos = Vector(-30.7,-79,25),
	L_RearLampAng = Angle(30,-90,0),
	R_RearLampPos = Vector(30.7,-79,25),
	R_RearLampAng = Angle(30,-90,0),
	
	Headlight_sprites = { 
		{pos = Vector(-28.7,71,31),material = "sprites/light_ignorez",size = 40},
		{pos = Vector(-28.7,71,31),size = 55},
		
		{pos = Vector(28.7,71,31),material = "sprites/light_ignorez",size = 40},
		{pos = Vector(28.7,71,31),size = 55},
	},
	Headlamp_sprites = { 
		{pos = Vector(28.7,71,31),size = 80},
		{pos = Vector(-28.7,71,31),size = 80},
	},
	Rearlight_sprites = {
		Vector(-30.7,-79,25),
		Vector(30.7,-79,25),
	},
	Reverselight_sprites = {
		Vector(-30.7,-79,25),
		Vector(30.7,-79,25),
	},
	
	Turnsignal_sprites = {
		Left = {
			Vector(-30.7,-79.5,31),
		},
		Right = {
			Vector(30.7,-79.5,31),
		},
	}
}
list.Set( "simfphys_lights", "watrabbi", light_table)

local light_table = {
	L_HeadLampPos = Vector(-28.7,73,31),
	L_HeadLampAng = Angle(15,90,0),
	
	L_RearLampPos = Vector(-30.7,-79,25),
	L_RearLampAng = Angle(30,-90,0),
	R_RearLampPos = Vector(30.7,-79,25),
	R_RearLampAng = Angle(30,-90,0),
	
	Headlight_sprites = { 
		{pos = Vector(-28.7,71,31),material = "sprites/light_ignorez",size = 40},
		{pos = Vector(-28.7,71,31),size = 55},
	},
	Headlamp_sprites = { 
		{pos = Vector(-28.7,71,31),size = 80},
	},
	Rearlight_sprites = {
		Vector(-30.7,-79,25),
		Vector(30.7,-79,25),
	},
	Reverselight_sprites = {
		Vector(-30.7,-79,25),
		Vector(30.7,-79,25),
	},
	
	Turnsignal_sprites = {
		Left = {
			Vector(-30.7,-79.5,31),
		},
		Right = {
			Vector(30.7,-79.5,31),
		},
	}
}
list.Set( "simfphys_lights", "jatrabbi", light_table)

local light_table = {
	L_HeadLampPos = Vector(91.33,30.44,30.63),
	L_HeadLampAng = Angle(15,0,0),
	R_HeadLampPos = Vector(91.33,-30.44,30.63),
	R_HeadLampAng = Angle(15,0,0),

	L_RearLampPos = Vector( -102.69,29.97,34.21),
	L_RearLampAng = Angle(45,180,0),
	R_RearLampPos = Vector( -102.69,-29.97,34.21),
	R_RearLampAng = Angle(45,180,0),
	
	Headlight_sprites = { 
		Vector(91.33,30.44,30.63),
		Vector(91.33,-30.44,30.63)
	},
	Headlamp_sprites = { 
		Vector(91.33,30.44,30.63),
		Vector(91.33,-30.44,30.63)
	},
	Rearlight_sprites = {
		{pos = Vector(-102.23,30,35.85),material = "sprites/light_ignorez",size = 35,color = Color( 255, 60, 0,  125)},
		{pos = Vector(-102.23,30,35.85),size = 45,color = Color( 255, 0, 0,  90)},
		
		{pos = Vector(-102.23,-30,35.85),material = "sprites/light_ignorez",size = 35,color = Color( 255, 60, 0,  125)},
		{pos = Vector(-102.23,-30,35.85),size = 45,color = Color( 255, 0, 0,  90)},
	},
	Brakelight_sprites = {
		{pos = Vector(-102.23,-30,35.85),material = "sprites/light_ignorez",size = 45,color = Color( 255, 60, 0,  125)},
		{pos = Vector(-102.23,-30,35.85),size = 50,color = Color( 255, 0, 0,  150)},
		
		{pos = Vector(-102.23,30,35.85),material = "sprites/light_ignorez",size = 45,color = Color( 255, 60, 0,  125)},
		{pos = Vector(-102.23,30,35.85),size = 50,color = Color( 255, 0, 0,  150)},
	},
	Reverselight_sprites = {
		Vector(-101.8,-29.4,30.7),Vector(-101.8,-31.09,30.7),
		Vector(-101.8,29.4,30.7),Vector(-101.8,31.09,30.7),
	},
	Turnsignal_sprites = {
		Left = {
			Vector(-102.62,31,33.24),
			Vector(-102.62,29,33.24),
			Vector(92.09,31,22.4),
			Vector(91.71,33,22.4),
		},
		Right = {
			Vector(-102.62,-31,33.24),
			Vector(-102.62,-29,33.24),
			Vector(92.09,-31,22.4),
			Vector(91.71,-33,22.4),
		},
	},
}
list.Set( "simfphys_lights", "hl_volga", light_table)

local light_table = {
	L_HeadLampPos = Vector(-30.7,78,32.5),
	L_HeadLampAng = Angle(15,90,0),
	R_HeadLampPos = Vector(30.7,78,32.5),
	R_HeadLampAng = Angle(15,90,0),
	
	L_RearLampPos = Vector(-29.7,-110,32),
	L_RearLampAng = Angle(30,-90,0),
	R_RearLampPos = Vector(30.2,-110,32),
	R_RearLampAng = Angle(30,-90,0),
	
	Headlight_sprites = { 
		{pos = Vector(-30.7,78,32.5),material = "sprites/light_ignorez",size = 40},
		{pos = Vector(-30.7,78,32.5),size = 55},
		
		{pos = Vector(30.7,78,32.5),material = "sprites/light_ignorez",size = 40},
		{pos = Vector(30.7,78,32.5),size = 55},
	},
	Headlamp_sprites = { 
		{pos = Vector(30.7,78,32.5),size = 80},
		{pos = Vector(-30.9,78,32.5),size = 80},
	},
	Rearlight_sprites = {
		Vector(-23,-105,29.5),
		Vector(23.3,-105,29.5),
	},
	Reverselight_sprites = {
		Vector(-19.5,-105,29.5),
		Vector(19.9,-105,29.5),
	},
	
	Turnsignal_sprites = {
		Left = {
			Vector(-27.9,-105,30),
		},
		Right = {
			Vector(28.3,-105,30),
		},
	}
}
list.Set( "simfphys_lights", "wazaz", light_table)

local light_table = {
	Rearlight_sprites = {
		Vector(-22,-105,30),
		Vector(22.3,-105,30),
	},
	Reverselight_sprites = {
		Vector(-18.5,-105,30),
		Vector(18.9,-105,30),
	},
	
	Turnsignal_sprites = {
		Left = {
			Vector(-26.4,-105,30),
		},
		Right = {
			Vector(27,-105,30),
		},
	}
}
list.Set( "simfphys_lights", "jzaz", light_table)

local light_table = {
	Rearlight_sprites = {
		Vector(-27,-75,34.5),
		Vector(27.3,-75,34.5),
	},
	Reverselight_sprites = {
		Vector(-32,-72,36.5),
		Vector(32,-72,36.5),
	},
	
	Turnsignal_sprites = {
		Left = {
			Vector(-27.3,-75,36.5),
		},
		Right = {
			Vector(27.7,-75,36.5),
		},
	}
}
list.Set( "simfphys_lights", "yugo", light_table)

local V = {
	Name = "Jalopy Zastava Yugo",
	Model = "models/source_vehicles/car001b_hatchback/vehicle.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	
	Members = {
		Mass = 800,

		FrontWheelRadius = 12.1,--радиус переднего колеса
		RearWheelRadius = 12.1,--радиус заднего колеса		

		CustomSuspensionTravel = 50,
		
		LightsTable = "yugo",
		
		EnginePos = Vector(0,52.5,40),
		
		SeatOffset = Vector(0,-1,-1),
		SeatPitch = 0,
		SeatYaw = 0,
		
		PassengerSeats = {
			{
				pos = Vector(0,-20,14),
				ang = Angle(0,-0,24)
			},
			{
				pos = Vector(15,2,14),
				ang = Angle(0,-0,20)
			}
		},
		
		FrontHeight = 14.0,
		FrontConstant = 45000.00,
		FrontDamping = 1800,
		FrontRelativeDamping = 500,
		
		RearHeight = 12.0,
		RearConstant = 45000.00,
		RearDamping = 1800,
		RearRelativeDamping = 500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 8,
		
		MaxGrip = 23,
		Efficiency = 1,
		GripOffset = -0.7,
		BrakePower = 25,
		
		IdleRPM = 750,
		LimitRPM = 6200,
		PeakTorque = 75,
		PowerbandStart = 1750,
		PowerbandEnd = 5700,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(-61.59,32.11,31.83),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = -1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/jeep/jeep_idle.wav",
		
		snd_low = "simulated_vehicles/jeep/jeep_low.wav",
		snd_low_revdown = "simulated_vehicles/jeep/jeep_revdown.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "simulated_vehicles/jeep/jeep_mid.wav",
		snd_mid_gearup = "simulated_vehicles/jeep/jeep_second.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_1.wav", 
		
		DifferentialGear = 0.78,
		Gears = {-0.08,0,0.08,0.18,0.26,0.33}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_jzy", V )

local V = {
	Name = "Zastava Yugo",
	Model = "models/source_vehicles/car001a_hatchback_skin0.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	
	Members = {
		Mass = 800,

		FrontWheelRadius = 12.1,--радиус переднего колеса
		RearWheelRadius = 12.1,--радиус заднего колеса		

		CustomSuspensionTravel = 50,

		LightsTable = "yugo",
		
		EnginePos = Vector(0,52.5,40),
		
		SeatOffset = Vector(0,-1,-1),
		SeatPitch = 0,
		SeatYaw = 0,
		
		PassengerSeats = {
			{
				pos = Vector(0,-20,14),
				ang = Angle(0,-0,24)
			},
			{
				pos = Vector(15,2,14),
				ang = Angle(0,-0,20)
			}
		},
		
		FrontHeight = 14.0,
		FrontConstant = 45000.00,
		FrontDamping = 1800,
		FrontRelativeDamping = 500,
		
		RearHeight = 12.0,
		RearConstant = 45000.00,
		RearDamping = 1800,
		RearRelativeDamping = 500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 8,
		
		MaxGrip = 23,
		Efficiency = 1,
		GripOffset = -0.7,
		BrakePower = 25,
		
		IdleRPM = 750,
		LimitRPM = 6200,
		PeakTorque = 75,
		PowerbandStart = 1750,
		PowerbandEnd = 5700,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(-61.59,32.11,31.83),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = -1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/jeep/jeep_idle.wav",
		
		snd_low = "simulated_vehicles/jeep/jeep_low.wav",
		snd_low_revdown = "simulated_vehicles/jeep/jeep_revdown.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "simulated_vehicles/jeep/jeep_mid.wav",
		snd_mid_gearup = "simulated_vehicles/jeep/jeep_second.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_1.wav", 
		
		DifferentialGear = 0.78,
		Gears = {-0.08,0,0.08,0.18,0.26,0.33}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_zy", V )

local V = {
	Name = "RAF 2203 Latvija",
	Model = "models/source_vehicles/van001a_01_nodoor.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnAngleOffset = 90,
	
	Members = {
		Mass = 2500,

		CustomMassCenter = Vector(0,0,15),
		
		CustomSteerAngle = 35,
		
		FrontWheelRadius = 15.1,--радиус переднего колеса
		RearWheelRadius = 15.1,--радиус заднего колеса		
		
		CustomSuspensionTravel = 50,
		
		EnginePos = Vector(0,85,40),
		
		SeatOffset = Vector(5,-1,-8),
		SeatPitch = 0,
		SeatYaw = 0,
		
		PassengerSeats = {
			{
				pos = Vector(18,50,26),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(30,-50,26),
				ang = Angle(0,90,10)
			}
		},
		
		FrontHeight = 20.0,
		FrontConstant = 45000.00,
		FrontDamping = 2000,
		FrontRelativeDamping = 500,
		
		RearHeight = 22.0,
		RearConstant = 45000.00,
		RearDamping = 2000,
		RearRelativeDamping = 500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 350,
		
		TurnSpeed = 8,
		
		MaxGrip = 45,
		Efficiency = 1.8,
		GripOffset = -2,
		BrakePower = 55,
		
		IdleRPM = 750,
		LimitRPM = 6000,
		PeakTorque = 95,
		PowerbandStart = 1000,
		PowerbandEnd = 5500,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(-93.45,46.02,42.24),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/jeep/jeep_idle.wav",
		
		snd_low = "simulated_vehicles/jeep/jeep_low.wav",
		snd_low_revdown = "simulated_vehicles/jeep/jeep_revdown.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "simulated_vehicles/jeep/jeep_mid.wav",
		snd_mid_gearup = "simulated_vehicles/jeep/jeep_second.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_1.wav", 
		
		DifferentialGear = 0.52,
		Gears = {-0.1,0,0.1,0.2,0.3,0.4}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_hlvan", V )


local V = {
	Name = "Moskvitch 2140",
	Model = "models/source_vehicles/car003a.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1350,
		
		LightsTable = "wamoskvich",

		CustomMassCenter = Vector(0,0,2.5),
		
		CustomSteerAngle = 35,
		
		FrontWheelRadius = 15.1,--радиус переднего колеса
		RearWheelRadius = 15.1,--радиус заднего колеса		

		CustomSuspensionTravel = 50,
		
		EnginePos = Vector(0, 52.5, 40),
		
		SeatOffset = Vector(0,-1,-1),
		SeatPitch = 0,
		SeatYaw = 0,
		
		PassengerSeats = {
			{
				pos = Vector(15,2,14),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(15,-35,18),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(0,-35,18),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(-15,-35,18),
				ang = Angle(0,-0,20)
			}
		},
		
		FrontHeight = 12.0,
		FrontConstant = 45000.00,
		FrontDamping = 2000,
		FrontRelativeDamping = 500,
		
		RearHeight = 15.0,
		RearConstant = 45000.00,
		RearDamping = 2000,
		RearRelativeDamping = 500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 8,
		
		MaxGrip = 35,
		Efficiency = 1,
		GripOffset = -1.5,
		BrakePower = 38,
		
		IdleRPM = 750,
		LimitRPM = 6000,
		PeakTorque = 100,
		PowerbandStart = 1500,
		PowerbandEnd = 5800,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(-78.34,33.36,33.18),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/jeep/jeep_idle.wav",
		
		snd_low = "simulated_vehicles/jeep/jeep_low.wav",
		snd_low_revdown = "simulated_vehicles/jeep/jeep_revdown.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "simulated_vehicles/jeep/jeep_mid.wav",
		snd_mid_gearup = "simulated_vehicles/jeep/jeep_second.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_1.wav", 
		
		DifferentialGear = 0.6,
		Gears = {-0.1,0,0.1,0.18,0.26,0.34,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_hlmoskvich", V )

local V = {
	Name = "Jalopy Moskvitch 2140",
	Model = "models/source_vehicles/car003b/vehicle.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1350,

		LightsTable = "jmoskvich",

		CustomMassCenter = Vector(0,0,2.5),
		
		CustomSteerAngle = 35,
		
		FrontWheelRadius = 15.1,--радиус переднего колеса
		RearWheelRadius = 15.1,--радиус заднего колеса		

		CustomSuspensionTravel = 50,
		
		EnginePos = Vector(0,55,40),
		
		SeatOffset = Vector(0,-1,-1),
		SeatPitch = 0,
		SeatYaw = 0,
		
		PassengerSeats = {
			{
				pos = Vector(15,2,14),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(0,-25,18),
				ang = Angle(0,-0,20)
			}
		},
		
		FrontHeight = 14.0,
		FrontConstant = 45000.00,
		FrontDamping = 2000,
		FrontRelativeDamping = 500,
		
		RearHeight = 17.0,
		RearConstant = 45000.00,
		RearDamping = 2000,
		RearRelativeDamping = 500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 8,
		
		MaxGrip = 35,
		Efficiency = 1,
		GripOffset = -1.5,
		BrakePower = 38,
		
		IdleRPM = 750,
		LimitRPM = 6000,
		PeakTorque = 100,
		PowerbandStart = 1500,
		PowerbandEnd = 5800,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(-78.34,33.36,33.18),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/jeep/jeep_idle.wav",
		
		snd_low = "simulated_vehicles/jeep/jeep_low.wav",
		snd_low_revdown = "simulated_vehicles/jeep/jeep_revdown.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "simulated_vehicles/jeep/jeep_mid.wav",
		snd_mid_gearup = "simulated_vehicles/jeep/jeep_second.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_1.wav", 
		
		DifferentialGear = 0.6,
		Gears = {-0.1,0,0.1,0.18,0.26,0.34,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_jhlmoskvich", V )

local V = {
	Name = "Rebel's Moskvitch 2140",
	Model = "models/source_vehicles/car003b_rebel.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1350,

		LightsTable = "wamoskvich",

		CustomMassCenter = Vector(0,0,2.5),
		
		CustomSteerAngle = 35,
		
		FrontWheelRadius = 15.1,--радиус переднего колеса
		RearWheelRadius = 15.1,--радиус заднего колеса		

		CustomSuspensionTravel = 50,
		
		EnginePos = Vector(0,55,40),
		
		SeatOffset = Vector(0,-1,-1),
		SeatPitch = 0,
		SeatYaw = 0,
		
		PassengerSeats = {
			{
				pos = Vector(15,2,14),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(0,-25,18),
				ang = Angle(0,-0,20)
			}
		},
		
		FrontHeight = 14.0,
		FrontConstant = 45000.00,
		FrontDamping = 2000,
		FrontRelativeDamping = 500,
		
		RearHeight = 19.0,
		RearConstant = 45000.00,
		RearDamping = 2000,
		RearRelativeDamping = 500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 8,
		
		MaxGrip = 35,
		Efficiency = 1,
		GripOffset = -1.5,
		BrakePower = 38,
		
		IdleRPM = 750,
		LimitRPM = 6000,
		PeakTorque = 100,
		PowerbandStart = 1500,
		PowerbandEnd = 5800,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(-78.34,33.36,33.18),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/jeep/jeep_idle.wav",
		
		snd_low = "simulated_vehicles/jeep/jeep_low.wav",
		snd_low_revdown = "simulated_vehicles/jeep/jeep_revdown.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "simulated_vehicles/jeep/jeep_mid.wav",
		snd_mid_gearup = "simulated_vehicles/jeep/jeep_second.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_1.wav", 
		
		DifferentialGear = 0.6,
		Gears = {-0.1,0,0.1,0.18,0.26,0.34,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_rhlmoskvich", V )

local V = {
	Name = "Trabant 601 Universal",
	Model = "models/source_vehicles/car002a.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,

	Members = {
		Mass = 850,
		
		LightsTable = "watrabbi",
		
		FirstPersonViewPos =  Vector(0,-15,6),
		
		AirFriction = -8000,
		
		CustomMassCenter = Vector(0,0,3),
		
		CustomSteerAngle = 35,
		
		FrontWheelRadius = 12.1,--радиус переднего колеса
		RearWheelRadius = 12.1,--радиус заднего колеса		

		CustomSuspensionTravel = 50,
		
		EnginePos = Vector(0,55,40),
		
		SeatOffset = Vector(5,-1,-5),
		SeatPitch = 0,
		SeatYaw = 0,
		
		PassengerSeats = {
			{
				pos = Vector(15,2,14),
				ang = Angle(0,-0,20)
			}
		},
		
		FrontHeight = 12.0,
		FrontConstant = 45000.00,
		FrontDamping = 1800,
		FrontRelativeDamping = 500,
		
		RearHeight = 12.0,
		RearConstant = 45000.00,
		RearDamping = 1800,
		RearRelativeDamping = 500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 8,
		
		MaxGrip = 30,
		Efficiency = 1.1,
		GripOffset = -1,
		BrakePower = 30,
		
		IdleRPM = 750,
		LimitRPM = 7500,
		PeakTorque = 85,
		PowerbandStart = 2000,
		PowerbandEnd = 7000,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(5.41,46.61,39.91),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = -1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/jeep/jeep_idle.wav",
		
		snd_low = "simulated_vehicles/jeep/jeep_low.wav",
		snd_low_revdown = "simulated_vehicles/jeep/jeep_revdown.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "simulated_vehicles/jeep/jeep_mid.wav",
		snd_mid_gearup = "simulated_vehicles/jeep/jeep_second.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_1.wav", 
		
		DifferentialGear = 0.6,
		Gears = {-0.1,0,0.1,0.2,0.28}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_hltrabant", V )

local V = {
	Name = "Jalopy Trabant 601",
	Model = "models/source_vehicles/car002b/vehicle.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,

	Members = {
		Mass = 850,
		
		LightsTable = "jatrabbi",
		
		EnginePos = Vector(0.6,56.38,38.7),
		
		FirstPersonViewPos =  Vector(0,-15,6),
		
		AirFriction = -8000,
		
		CustomMassCenter = Vector(0,0,3),
		
		CustomSteerAngle = 10,
		
		FrontWheelRadius = 12.1,--радиус переднего колеса
		RearWheelRadius = 12.1,--радиус заднего колеса		

		CustomSuspensionTravel = 50,
		
		EnginePos = Vector(0,52.5,40),
		
		SeatOffset = Vector(5,-1,-5),
		SeatPitch = 0,
		SeatYaw = 0,
		
		PassengerSeats = {
			{
				pos = Vector(15,5,14),
				ang = Angle(0,-0,20)
			}
		},
		
		FrontHeight = 12.0,
		FrontConstant = 45000.00,
		FrontDamping = 1800,
		FrontRelativeDamping = 500,
		
		RearHeight = 15.0,
		RearConstant = 45000.00,
		RearDamping = 1800,
		RearRelativeDamping = 500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 8,
		
		MaxGrip = 30,
		Efficiency = 1.1,
		GripOffset = -1,
		BrakePower = 30,
		
		IdleRPM = 750,
		LimitRPM = 7500,
		PeakTorque = 85,
		PowerbandStart = 2000,
		PowerbandEnd = 7000,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(5.41,46.61,39.91),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = -1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/jeep/jeep_idle.wav",
		
		snd_low = "simulated_vehicles/jeep/jeep_low.wav",
		snd_low_revdown = "simulated_vehicles/jeep/jeep_revdown.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "simulated_vehicles/jeep/jeep_mid.wav",
		snd_mid_gearup = "simulated_vehicles/jeep/jeep_second.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_1.wav", 
		
		DifferentialGear = 0.6,
		Gears = {-0.1,0,0.1,0.2,0.28}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_jhltrabant", V )

local V = {
	Name = "GAZ 24",
	Model = "models/source_vehicles/car004a.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1350,
		
		LightsTable = "gaztf",
		
		EnginePos = Vector(65.39,0,44.84),

		FrontWheelRadius = 15.1,--радиус переднего колеса
		RearWheelRadius = 15.1,--радиус заднего колеса		

		CustomSuspensionTravel = 50,
		
		EnginePos = Vector(0,55,40),
		
		SeatOffset = Vector(0,-1,-1),
		SeatPitch = 0,
		SeatYaw = 0,
		
		PassengerSeats = {
			{
				pos = Vector(15,2,14),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(15,-35,18),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(0,-35,18),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(-15,-35,18),
				ang = Angle(0,-0,20)
			}
		},
		
		FrontHeight = 12.0,
		FrontConstant = 45000.00,
		FrontDamping = 2000,
		FrontRelativeDamping = 500,
		
		RearHeight = 12.0,
		RearConstant = 45000.00,
		RearDamping = 2000,
		RearRelativeDamping = 500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 8,
		
		MaxGrip = 35,
		Efficiency = 1,
		GripOffset = -1.5,
		BrakePower = 38,
		
		IdleRPM = 750,
		LimitRPM = 6000,
		PeakTorque = 100,
		PowerbandStart = 1500,
		PowerbandEnd = 5800,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(-80.3,37.79,35.54),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/jeep/jeep_idle.wav",
		
		snd_low = "simulated_vehicles/jeep/jeep_low.wav",
		snd_low_revdown = "simulated_vehicles/jeep/jeep_revdown.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "simulated_vehicles/jeep/jeep_mid.wav",
		snd_mid_gearup = "simulated_vehicles/jeep/jeep_second.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_1.wav",
		
		DifferentialGear = 0.62,
		Gears = {-0.1,0,0.1,0.18,0.26,0.31,0.38}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_hlvolga", V )

local V = {
	Name = "Jalopy GAZ 24",
	Model = "models/source_vehicles/car004b/vehicle.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1350,
		
		LightsTable = "jgaztf",
		
		EnginePos = Vector(65.39,0,44.84),

		FrontWheelRadius = 15.1,--радиус переднего колеса
		RearWheelRadius = 15.1,--радиус заднего колеса		

		CustomSuspensionTravel = 50,
		
		EnginePos = Vector(0,55,40),
		
		SeatOffset = Vector(0,-1,-1),
		SeatPitch = 0,
		SeatYaw = 0,
		
		PassengerSeats = {
			{
				pos = Vector(17,2,18),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(17,-35,18),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(0,-35,18),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(-17,-35,18),
				ang = Angle(0,-0,20)
			}
		},
		
		FrontHeight = 15.0,
		FrontConstant = 45000.00,
		FrontDamping = 2000,
		FrontRelativeDamping = 500,
		
		RearHeight = 12.0,
		RearConstant = 45000.00,
		RearDamping = 2000,
		RearRelativeDamping = 500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 8,
		
		MaxGrip = 35,
		Efficiency = 1,
		GripOffset = -1.5,
		BrakePower = 38,
		
		IdleRPM = 750,
		LimitRPM = 6000,
		PeakTorque = 100,
		PowerbandStart = 1500,
		PowerbandEnd = 5800,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(-80.3,37.79,35.54),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/jeep/jeep_idle.wav",
		
		snd_low = "simulated_vehicles/jeep/jeep_low.wav",
		snd_low_revdown = "simulated_vehicles/jeep/jeep_revdown.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "simulated_vehicles/jeep/jeep_mid.wav",
		snd_mid_gearup = "simulated_vehicles/jeep/jeep_second.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_4.wav",
		
		DifferentialGear = 0.62,
		Gears = {-0.1,0,0.1,0.18,0.26,0.31,0.38}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_jhlvolga", V )

local V = {
	Name = "ZAZ 968",
	Model = "models/source_vehicles/car005a.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnAngleOffset = 0,

	Members = {
		Mass = 1350,
		
		LightsTable = "wazaz",
		
		EnginePos = Vector(55.76,0,44.4),

		CustomMassCenter = Vector(0,0,2.5),
		
		CustomSteerAngle = 35,
		
		FrontWheelRadius = 15.1,--радиус переднего колеса
		RearWheelRadius = 15.1,--радиус заднего колеса		

		CustomSuspensionTravel = 50,
		
		EnginePos = Vector(0,-85,40),
		
		SeatOffset = Vector(3, -1,-3),
		SeatPitch = 0,
		SeatYaw = 0,
		
		PassengerSeats = {
			{
				pos = Vector(17,2,22),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(15,-35,22),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(0,-35,22),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(-15,-35,22),
				ang = Angle(0,-0,20)
			}
		},
		
		FrontHeight = 12.0,
		FrontConstant = 45000.00,
		FrontDamping = 2000,
		FrontRelativeDamping = 500,
		
		RearHeight = 12.0,
		RearConstant = 45000.00,
		RearDamping = 2000,
		RearRelativeDamping = 500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 8,
		
		MaxGrip = 35,
		Efficiency = 1,
		GripOffset = -1.5,
		BrakePower = 38,
		
		IdleRPM = 750,
		LimitRPM = 6000,
		PeakTorque = 100,
		PowerbandStart = 1500,
		PowerbandEnd = 5800,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(-78.34,33.36,33.18),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/jeep/jeep_idle.wav",
		
		snd_low = "simulated_vehicles/jeep/jeep_low.wav",
		snd_low_revdown = "simulated_vehicles/jeep/jeep_revdown.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "simulated_vehicles/jeep/jeep_mid.wav",
		snd_mid_gearup = "simulated_vehicles/jeep/jeep_second.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_7.wav", 
		
		DifferentialGear = 0.6,
		Gears = {-0.1,0,0.1,0.18,0.26,0.34,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_hlzaz", V )

local V = {
	Name = "Jalopy ZAZ 968",
	Model = "models/source_vehicles/car005b/vehicle.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1350,
		
		LightsTable = "jzaz",
		
		EnginePos = Vector(55.76,0,44.4),

		CustomMassCenter = Vector(0,0,2.5),
		
		CustomSteerAngle = 35,
		
		FrontWheelRadius = 15.1,--радиус переднего колеса
		RearWheelRadius = 15.1,--радиус заднего колеса		

		CustomSuspensionTravel = 50,
		
		EnginePos = Vector(0,-85,40),
		
		SeatOffset = Vector(3, -1,-3),
		SeatPitch = 0,
		SeatYaw = 0,
		
		PassengerSeats = {
			{
				pos = Vector(17,2,22),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(15,-35,22),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(0,-35,22),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(-15,-35,22),
				ang = Angle(0,-0,20)
			}
		},
		
		FrontHeight = 12.0,
		FrontConstant = 45000.00,
		FrontDamping = 2000,
		FrontRelativeDamping = 500,
		
		RearHeight = 12.0,
		RearConstant = 45000.00,
		RearDamping = 2000,
		RearRelativeDamping = 500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 8,
		
		MaxGrip = 35,
		Efficiency = 1,
		GripOffset = -1.5,
		BrakePower = 38,
		
		IdleRPM = 750,
		LimitRPM = 6000,
		PeakTorque = 100,
		PowerbandStart = 1500,
		PowerbandEnd = 5800,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(-78.34,33.36,33.18),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/jeep/jeep_idle.wav",
		
		snd_low = "simulated_vehicles/jeep/jeep_low.wav",
		snd_low_revdown = "simulated_vehicles/jeep/jeep_revdown.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "simulated_vehicles/jeep/jeep_mid.wav",
		snd_mid_gearup = "simulated_vehicles/jeep/jeep_second.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_7.wav", 
		
		DifferentialGear = 0.6,
		Gears = {-0.1,0,0.1,0.18,0.26,0.34,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_jhlzaz", V )

local V = {
	Name = "Armoured ZAZ 968",
	Model = "models/source_vehicles/car005b_armored/vehicle.mdl",
	Class = "gmod_sent_vehicle_fphysics_base",
	Category = Category,
	SpawnAngleOffset = 90,

	Members = {
		Mass = 1350,
		
		LightsTable = "jzaz",
		
		EnginePos = Vector(55.76,0,44.4),

		CustomMassCenter = Vector(0,0,2.5),
		
		CustomSteerAngle = 35,
		
		FrontWheelRadius = 15.1,--радиус переднего колеса
		RearWheelRadius = 15.1,--радиус заднего колеса		

		CustomSuspensionTravel = 50,
		
		EnginePos = Vector(0,-85,40),
		
		SeatOffset = Vector(3, -1,-3),
		SeatPitch = 0,
		SeatYaw = 0,
		
		ExhaustPositions = {
			{
				pos = Vector(-18.5,-106,11.5),
				ang = Angle(90,-90,0)
			}
		},
		
		PassengerSeats = {
			{
				pos = Vector(17,2,22),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(15,-35,22),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(0,-35,22),
				ang = Angle(0,-0,20)
			},
			{
				pos = Vector(-15,-35,22),
				ang = Angle(0,-0,20)
			}
		},
		
		FrontHeight = 12.0,
		FrontConstant = 45000.00,
		FrontDamping = 2000,
		FrontRelativeDamping = 500,
		
		RearHeight = 12.0,
		RearConstant = 45000.00,
		RearDamping = 2000,
		RearRelativeDamping = 500,
		
		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 400,
		
		TurnSpeed = 8,
		
		MaxGrip = 35,
		Efficiency = 1,
		GripOffset = -1.5,
		BrakePower = 38,
		
		IdleRPM = 750,
		LimitRPM = 6000,
		PeakTorque = 100,
		PowerbandStart = 1500,
		PowerbandEnd = 5800,
		Turbocharged = false,
		Supercharged = false,
		
		FuelFillPos = Vector(-78.34,33.36,33.18),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 65,
		
		PowerBias = 1,
		
		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "simulated_vehicles/jeep/jeep_idle.wav",
		
		snd_low = "simulated_vehicles/jeep/jeep_low.wav",
		snd_low_revdown = "simulated_vehicles/jeep/jeep_revdown.wav",
		snd_low_pitch = 0.9,
		
		snd_mid = "simulated_vehicles/jeep/jeep_mid.wav",
		snd_mid_gearup = "simulated_vehicles/jeep/jeep_second.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "simulated_vehicles/misc/nanjing_loop.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "simulated_vehicles/misc/m50.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "simulated_vehicles/misc/v8high2.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 0.75,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 0,
		Sound_ThrottleVolume = 0,
		
		snd_horn = "simulated_vehicles/horn_7.wav", 
		
		DifferentialGear = 0.6,
		Gears = {-0.1,0,0.1,0.18,0.26,0.34,0.42}
	}
}
list.Set( "simfphys_vehicles", "sim_fphys_ahlzaz", V )