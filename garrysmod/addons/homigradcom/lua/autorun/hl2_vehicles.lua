//Doc's vehicles

local Category = "Source Vehicles"

local V = {
				// Required information
				Name =	"Cadillac Gage V100 APC",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "V100 APC",
				Model =	"models/source_vehicles/apc.mdl",
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/oldapc.txt"
					    }
}

list.Set( "Vehicles", "apc", V )

local V = {
				// Required information
				Name =	"Zastava Yugo (skin0)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Yugo",
				Model =	"models/source_vehicles/car001a_hatchback_skin0.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-30,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-30,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/hl2_hatchback.txt"
					    }
}

list.Set( "Vehicles", "car001a_skin0", V )

local V = {
				// Required information
				Name =	"Zastava Yugo (skin1)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Yugo",
				Model =	"models/source_vehicles/car001a_hatchback_skin1.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-30,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-30,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/hl2_hatchback.txt"
					    }
}

list.Set( "Vehicles", "car001a_skin1", V )

local V = {
				// Required information
				Name =	"Jalopy Zastava Yugo (skin0)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Jalopy Yugo",
				Model =	"models/source_vehicles/car001b_hatchback/vehicle.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-30,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-30,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/hl2_hatchback.txt"
					    }
}

list.Set( "Vehicles", "car001b_skin0", V )

local V = {
				// Required information
				Name =	"Jalopy Zastava Yugo (skin1)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Jalopy Yugo",
				Model =	"models/source_vehicles/car001b_hatchback/vehicle_skin1.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-30,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-30,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/hl2_hatchback.txt"
					    }
}

list.Set( "Vehicles", "car001b_skin1", V )

local V = {
				// Required information
				Name =	"Trabant 601 Universal",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Trabant 601 DeLuxe Universal",
				Model =	"models/source_vehicles/car002a.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(16,-5,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/hl2_hatchback.txt"
					    }
}

list.Set( "Vehicles", "car002a", V )

local V = {
				// Required information
				Name =	"Jalopy Trabant 601",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Jalopy Trabant 601 DeLuxe Universal",
				Model =	"models/source_vehicles/car002b/vehicle.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(16,-5,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/hl2_hatchback.txt"
					    }
}

list.Set( "Vehicles", "car002b", V )

local V = {
				// Required information
				Name =	"Moskvitch 2140",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Moskvitch 2140",
				Model =	"models/source_vehicles/car003a.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,18), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-40,18), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-40,18), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/hl2_cars.txt"
					    }
}

list.Set( "Vehicles", "car003a", V )

local V = {
				// Required information
				Name =	"Jalopy Moskvitch 2140",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Jalopy Moskvitch 2140",
				Model =	"models/source_vehicles/car003b/vehicle.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,20), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-40,20), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-40,20), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/rubbishcar.txt"
					    }
}

list.Set( "Vehicles", "car003b", V )

local V = {
				// Required information
				Name =	"Rebels Moskvitch 2140",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "...Drive to Hawaii...",
				Model =	"models/source_vehicles/car003b_rebel.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,18), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-40,18), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-40,18), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/hl2_cars.txt"
					    }
}

list.Set( "Vehicles", "car003b_rebel", V )

local V = {
				// Required information
				Name =	"GAZ 24",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "GAZ 24",
				Model =	"models/source_vehicles/car004a.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-45,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-45,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/hl2_cars.txt"
					    }
}

list.Set( "Vehicles", "car004a", V )

local V = {
				// Required information
				Name =	"Jalopy GAZ 24",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Jalopy GAZ 24",
				Model =	"models/source_vehicles/car004b/vehicle.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-40,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-40,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/rubbishcar.txt"
					    }
}

list.Set( "Vehicles", "car004b", V )

local V = {
				// Required information
				Name =	"ZAZ 968",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "ZAZ 968",
				Model =	"models/source_vehicles/car005a.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-45,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-45,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/hl2_cars.txt"
					    }
}

list.Set( "Vehicles", "car005a", V )

local V = {
				// Required information
				Name =	"Jalopy ZAZ 968",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Jalopy ZAZ 968",
				Model =	"models/source_vehicles/car005b/vehicle.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-45,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-45,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/rubbishcar.txt"
					    }
}

list.Set( "Vehicles", "car005b", V )

local V = {
				// Required information
				Name =	"Armored ZAZ 968",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Armored Jalopy ZAZ 968",
				Model =	"models/source_vehicles/car005b_armored/vehicle.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-45,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-45,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/rubbishcar.txt"
					    }
}

list.Set( "Vehicles", "car005b_armored", V )

local V = {
				// Required information
				Name =	"Combine APC",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Combine APC",
				Model =	"models/source_vehicles/combineapc.mdl",
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/combineapc.txt"
					    }
}

list.Set( "Vehicles", "combineapc", V )

local V = {
				// Required information
				Name =	"Forklift (Episode 2)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "ep2 forklift",
				Model =	"models/source_vehicles/forklift_ep2.mdl",
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/forklift_ep2.txt"
					    }
}

list.Set( "Vehicles", "forklift_ep2", V )

//local V = {
//				// Required information
//				Name =	"Forklift (Episode 2, no fork)",
//				Class = "prop_vehicle_jeep",
//				Category = Category,
//
//				// Optional information
//				Author = "Doc",
//				Information = "ep2 forklift without fork",
//				Model =	"models/source_vehicles/forklift_ep2_nofork.mdl",
//				
//				KeyValues = {				
//								vehiclescript =	"scripts/vehicles/forklift_ep2.txt"
//					    }
//}

//list.Set( "Vehicles", "forklift_ep2_nofork", V )

//local V = {
//				// Required information
//				Name =	"Fork (Episode 2)",
//				Class = "prop_static",
//				Category = Category,
//
//				// Optional information
//				Author = "Doc",
//				Information = "ep2 forklift fork",
//				Model =	"models/source_vehicles/fork_big.mdl",
//}

//list.Set( "Vehicles", "fork_big", V )

local V = {
				// Required information
				Name =	"Avia A31 (skin0)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "truck001c_01",
				Model =	"models/source_vehicles/truck001c_01.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(20,78,45), Ang = Angle(0,0,8), EnterRange = 8000, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/truck001c_01.txt"
					    }
}

list.Set( "Vehicles", "truck001c_01", V )

local V = {
				// Required information
				Name =	"Avia A31 (skin1)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "truck001c_02",
				Model =	"models/source_vehicles/truck001c_02.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(20,78,45), Ang = Angle(0,0,8), EnterRange = 8000, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/truck001c_01.txt"
					    }
}

list.Set( "Vehicles", "truck001c_02", V )

local V = {
				// Required information
				Name =	"LIAZ Skoda 706 RT",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "truck002a_cab",
				Model =	"models/source_vehicles/truck002a_cab.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(28,65,62), Ang = Angle(0,0,8), EnterRange = 8000, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/truck002a_cab.txt"
					    }
}

list.Set( "Vehicles", "truck002a_cab", V )

local V = {
				// Required information
				Name =	"GAZ 53",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "truck003a_01",
				Model =	"models/source_vehicles/truck003a_01.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(23,0,47), Ang = Angle(0,0,8), EnterRange = 8000, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/truck003a_01.txt"
					    }
}

list.Set( "Vehicles", "truck003a_01", V )

local V = {
				// Required information
				Name =	"RAF 2203 Latvija (skin0)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "van001a_01",
				Model =	"models/source_vehicles/van001a_01.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(27,38,32), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(0,38,32), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(30,-42,29), Ang = Angle(0,90,8), EnterRange = 280, ExitAng = Angle(0,180,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/van001a-vehicle_van.txt"
					    }
}

list.Set( "Vehicles", "van001a_01", V )

local V = {
				// Required information
				Name =	"RAF 2203 Latvija (nodoor, skin0)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "van001a_01_nodoor",
				Model =	"models/source_vehicles/van001a_01_nodoor.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(27,38,32), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(0,38,32), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(30,-42,29), Ang = Angle(0,90,8), EnterRange = 280, ExitAng = Angle(0,180,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/van001a-vehicle_van.txt"
					    }
}

list.Set( "Vehicles", "van001a_01_nodoor", V )

local V = {
				// Required information
				Name =	"RAF 2203 Latvija (skin1)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "van001b_01",
				Model =	"models/source_vehicles/van001b_01.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(27,38,32), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(0,38,32), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(30,-42,29), Ang = Angle(0,90,8), EnterRange = 280, ExitAng = Angle(0,180,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/van001a-vehicle_van.txt"
					    }
}

list.Set( "Vehicles", "van001b_01", V )

local V = {
				// Required information
				Name =	"RAF 2203 Latvija (nodoor, skin1)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "van001b_01",
				Model =	"models/source_vehicles/van001b_01_nodoor.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(27,38,32), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(0,38,32), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(30,-42,29), Ang = Angle(0,90,8), EnterRange = 280, ExitAng = Angle(0,180,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/van001a-vehicle_van.txt"
					    }
}

list.Set( "Vehicles", "van001b_01_nodoor", V )

local V = {
				// Required information
				Name =	"RAF 2203 Latvija (Episode 1)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "vehicle_van",
				Model =	"models/source_vehicles/vehicle_van.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(27,38,32), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(0,38,32), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(30,-42,29), Ang = Angle(0,90,8), EnterRange = 280, ExitAng = Angle(0,180,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/van001a-vehicle_van.txt"
					    }
}

list.Set( "Vehicles", "vehicle_van", V )


//Doc's trailers

local Category = "Source Trailers"

local V = {
				// Required information
				Name =	"Trailer",
				Class = "prop_ragdoll",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "trailer test",
				Model =	"models/source_trailers/trailer_test.mdl",
			}

list.Set( "Vehicles", "trailer_test", V )

//Doc's Powered Vehicles

local Category = "Source Vehicles Powered"

local V = {
				// Required information
				Name =	"Zastava Yugo (skin0)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Yugo",
				Model =	"models/source_vehicles/car001a_hatchback_skin0.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-30,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-30,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/fast_hl2_hatchback.txt"
					    }
}

list.Set( "Vehicles", "fast_car001a_skin0", V )

local V = {
				// Required information
				Name =	"Zastava Yugo (skin1)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Yugo",
				Model =	"models/source_vehicles/car001a_hatchback_skin1.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-30,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-30,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/fast_hl2_hatchback.txt"
					    }
}

list.Set( "Vehicles", "fast_car001a_skin1", V )

local V = {
				// Required information
				Name =	"Jalopy Zastava Yugo (skin0)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Jalopy Yugo",
				Model =	"models/source_vehicles/car001b_hatchback/vehicle.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-30,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-30,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/fast_hl2_hatchback.txt"
					    }
}

list.Set( "Vehicles", "fast_car001b_skin0", V )

local V = {
				// Required information
				Name =	"Jalopy Zastava Yugo (skin1)",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Jalopy Yugo",
				Model =	"models/source_vehicles/car001b_hatchback/vehicle_skin1.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-30,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-30,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/fast_hl2_hatchback.txt"
					    }
}

list.Set( "Vehicles", "fast_car001b_skin1", V )

local V = {
				// Required information
				Name =	"Trabant 601 Universal",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Trabant 601 DeLuxe Universal",
				Model =	"models/source_vehicles/car002a.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(16,-5,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/fast_hl2_hatchback.txt"
					    }
}

list.Set( "Vehicles", "fast_car002a", V )

local V = {
				// Required information
				Name =	"Jalopy Trabant 601",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Jalopy Trabant 601 DeLuxe Universal",
				Model =	"models/source_vehicles/car002b/vehicle.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(16,-5,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/fast_hl2_hatchback.txt"
					    }
}

list.Set( "Vehicles", "fast_car002b", V )

local V = {
				// Required information
				Name =	"Moskvitch 2140",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Moskvitch 2140",
				Model =	"models/source_vehicles/car003a.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,18), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-40,18), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-40,18), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/fast_hl2_cars.txt"
					    }
}

list.Set( "Vehicles", "fast_car003a", V )

local V = {
				// Required information
				Name =	"Jalopy Moskvitch 2140",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Jalopy Moskvitch 2140",
				Model =	"models/source_vehicles/car003b/vehicle.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,20), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-40,20), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-40,20), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/fast_rubbishcar.txt"
					    }
}

list.Set( "Vehicles", "fast_car003b", V )

local V = {
				// Required information
				Name =	"Rebels Moskvitch 2140",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "... Drive (fast) to Hawaii...",
				Model =	"models/source_vehicles/car003b_rebel.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,18), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-40,18), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-40,18), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/fast_hl2_cars.txt"
					    }
}

list.Set( "Vehicles", "fast_car003b_rebel", V )

local V = {
				// Required information
				Name =	"GAZ 24",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "GAZ 24",
				Model =	"models/source_vehicles/car004a.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-45,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-45,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/fast_hl2_cars.txt"
					    }
}

list.Set( "Vehicles", "fast_car004a", V )

local V = {
				// Required information
				Name =	"Jalopy GAZ 24",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Jalopy GAZ 24",
				Model =	"models/source_vehicles/car004b/vehicle.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-40,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-40,17), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/fast_rubbishcar.txt"
					    }
}

list.Set( "Vehicles", "fast_car004b", V )

local V = {
				// Required information
				Name =	"ZAZ 968",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "ZAZ 968",
				Model =	"models/source_vehicles/car005a.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-45,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-45,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/fast_hl2_cars.txt"
					    }
}

list.Set( "Vehicles", "fast_car005a", V )

local V = {
				// Required information
				Name =	"Jalopy ZAZ 968",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Jalopy ZAZ 968",
				Model =	"models/source_vehicles/car005b/vehicle.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-45,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-45,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/fast_rubbishcar.txt"
					    }
}

list.Set( "Vehicles", "fast_car005b", V )

local V = {
				// Required information
				Name =	"Armored ZAZ 968",
				Class = "prop_vehicle_jeep",
				Category = Category,

				// Optional information
				Author = "Doc",
				Information = "Armored Jalopy ZAZ 968",
				Model =	"models/source_vehicles/car005b_armored/vehicle.mdl",

				//Vehicle Controller
				VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(17,-5,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = true, RadioControl = true},
							{Pos = Vector(16,-45,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,-90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true},
							{Pos = Vector(-16,-45,22), Ang = Angle(0,0,8), EnterRange = 280, ExitAng = Angle(0,90,0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12,0,4), Hide = true, DoorSounds = false, RadioControl = true}
						},
				
				KeyValues = {				
								vehiclescript =	"scripts/vehicles/fast_rubbishcar.txt"
					    }
}

list.Set( "Vehicles", "fast_car005b_armored", V )