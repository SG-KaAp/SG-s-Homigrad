local function physicsSettings( CPanel )

    local PhysicsSettingsOptions = {Options = {}, CVars = {}, Label = "#Presets", MenuButton = "1", Folder = "slc"}

    PhysicsSettingsOptions.Options["#Default"] = {
        phys_airdensity = "2",
        phys_maxvelocity = "4000",
        phys_maxangularvelocity = "3600",
        phys_gravity_x = "0",
        phys_gravity_y = "0",
        phys_gravity_z = "-600",
        phys_collisions_object_timestep = "10",
        phys_collisions_timestep = "250",
        phys_minfrictionmass = "10",
        phys_maxfrictionmass = "2500",
        sv_maxvelocity = "3500"
    }

    PhysicsSettingsOptions.Options["#Earth Gravity"] = {
        phys_airdensity = "2",
        phys_maxvelocity = "4000",
        phys_maxangularvelocity = "3600",
        phys_gravity_x = "0",
        phys_gravity_y = "0",
        phys_gravity_z = "-514.7847769",
        phys_collisions_object_timestep = "10",
        phys_collisions_timestep = "250",
        phys_minfrictionmass = "10",
        phys_maxfrictionmass = "2500",
        sv_maxvelocity = "3500"
    }

    PhysicsSettingsOptions.Options["#Moon Gravity"] = {
        phys_airdensity = "2",
        phys_maxvelocity = "4000",
        phys_maxangularvelocity = "3600",
        phys_gravity_x = "0",
        phys_gravity_y = "0",
        phys_gravity_z = "-85.45",
        phys_collisions_object_timestep = "10",
        phys_collisions_timestep = "250",
        phys_minfrictionmass = "10",
        phys_maxfrictionmass = "2500",
        sv_maxvelocity = "3500"
    }

    PhysicsSettingsOptions.CVars = {
		"phys_airdensity",
		"phys_maxvelocity",
		"phys_maxangularvelocity",
		"phys_gravity_x",
		"phys_gravity_y",
		"phys_gravity_z",
		"phys_collisions_object_timestep",
		"phys_collisions_timestep",
		"phys_minfrictionmass",
		"phys_maxfrictionmass",
        "sv_maxvelocity"
    }

    CPanel:AddControl("ComboBox", PhysicsSettingsOptions)

    language.Add("sv_maxvelocity","Max Player Velocity")
    language.Add("sv_maxvelocity.help","Maximum speed any ballistically moving object is allowed to attain per axis.")
    
    language.Add("phys_maxvelocity","Max. Velocity")
    language.Add("phys_maxvelocity.help","Maximum speed of an object.")

    language.Add("phys_maxangularvelocity","Max. Ang. Velocity")
    language.Add("phys_maxangularvelocity.help","Maximum rotation velocity.")

    language.Add("phys_collisions_object_timestep","Coll. Obj. Timestep")
    language.Add("phys_collisions_object_timestep.help","Maximum collision per object per tick.")

    language.Add("phys_collisions_timestep","Coll. Timestep")
    language.Add("phys_collisions_timestep.help","Maximum collision checks per tick.")

    language.Add("phys_minfrictionmass","Min. Friction Mass")
    language.Add("phys_minfrictionmass.help","Minimum mass of an object to be affected by friction.")

    language.Add("phys_maxfrictionmass","Max. Friction Mass")
    language.Add("phys_maxfrictionmass.help","Maximum mass of an object to be affected by friction.")

    CPanel:AddControl("Slider", {
        Label  = "Air Density",
        Command  = "phys_airdensity",
        Type   = "Integer",
        Min   = "0",
        Max   = "10"
    })

    CPanel:AddControl("Slider", {
        Label  = "#phys_maxvelocity",
        Command  = "phys_maxvelocity",
        Type   = "Integer",
        Min   = "0",
        Max   = "50000",
        Help = true
    })

    CPanel:AddControl("Slider", {
        Label  = "#phys_maxangularvelocity",
        Command  = "phys_maxangularvelocity",
        Type   = "Integer",
        Min   = "0",
        Max   = "10000",
        Help = true
    })
		
    CPanel:AddControl("Slider", {
        Label  = "Gravity X",
        Command  = "phys_gravity_x",
        Type   = "Float",
        Min   = "-600",
        Max   = "600"
    })
		
    CPanel:AddControl("Slider", {
        Label  = "Gravity Y",
        Command  = "phys_gravity_y",
        Type   = "Float",
        Min   = "-600",
        Max   = "600"
    })
		
    CPanel:AddControl("Slider", {
        Label  = "Gravity Z",
        Command  = "phys_gravity_z",
        Type   = "Float",
        Min   = "-600",
        Max   = "600"
    })
		
    CPanel:AddControl("Slider", {
        Label  = "#phys_collisions_object_timestep",
        Command  = "phys_collisions_object_timestep",
        Type   = "Integer",
        Min   = "0",
        Max   = "10000",
        Help = true
    })
		
    CPanel:AddControl("Slider", {
        Label  = "#phys_collisions_timestep",
        Command  = "phys_collisions_timestep",
        Type   = "Integer",
        Min   = "0",
        Max   = "10000",
        Help = true
    })
		
    CPanel:AddControl("Slider", {
        Label  = "#phys_minfrictionmass",
        Command  = "phys_minfrictionmass",
        Type   = "Integer",
        Min   = "0",
        Max   = "10000",
        Help = true
    })
		
    CPanel:AddControl("Slider", {
        Label  = "#phys_maxfrictionmass",
        Command  = "phys_maxfrictionmass",
        Type   = "Integer",
        Min   = "0",
        Max   = "10000",
        Help = true
    })

    CPanel:AddControl( "Slider", {
        Label = "#sv_maxvelocity", 
        Type = "Integer", 
        Command = "sv_maxvelocity", 
        Min = 0, 
        Max = 50000, 
        Help = true
    })
end

hook.Add( "PopulateToolMenu", "PopulateSlcMenus", function()

	spawnmenu.AddToolMenuOption( "Options", "Addons", "PhysicsSettings", "Physics Settings", "", "", physicsSettings )

end );
