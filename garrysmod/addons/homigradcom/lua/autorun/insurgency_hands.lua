CreateConVar( "hands_model", 6, { FCVAR_ARCHIVE, FCVAR_REPLICATED } )
if CLIENT then
hook.Add("PopulateToolMenu", "Insurgency.HandsModel", function()
spawnmenu.AddToolMenuOption( "Options", "Insurgency", "insurgency", "Hands", "", "", function( panel )
panel:SetName("Hands")
panel:AddControl( "Label", { Text = "You need to choose numbers from 0 to 6:" } )
panel:AddControl( "Label", { Text = "0, 1, 2 - insurgent hands" } )
panel:AddControl( "Label", { Text = "3, 4, 5 - security hands" } )
panel:AddControl( "Label", { Text = "6 - VIP hands" } )
panel:AddControl( "Label", { Text = "WARNING! You must respawn after changing this value" } )
panel:AddControl( "Numpad", { Label = "Number of hands model", Command = "hands_model" } )
end)
end)
end