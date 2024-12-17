function event.CanRandomNext() return false end

function event.StartRoundSV()
    tdm.RemoveItems()

	--for i,ply in pairs(team.GetPlayers(2)) do ply:SetTeam(1) end
	for i,ply in pairs(team.GetPlayers(3)) do ply:SetTeam(1) end

    for i,ply in pairs(team.GetPlayers(2)) do
        ply:Spawn()
    end
end


function event.EndRound()
    PrintMessage(3,"Если вы хотите закончить раунд, пропишите !levelend")
end

function event.PlayerSpawn(ply,teamID)
    for i,ply in pairs(team.GetPlayers(2)) do
    ply:Give("weapon_physgun")
    ply:Give("weapon_physcannon")
    ply:Give("gmod_tool")
    ply:SetModel("models/player/odessa.mdl")
    end
    for i,ply in pairs(team.GetPlayers(1)) do
        ply:SetModel(ply:SetModel(tdm.models[math.random(#tdm.models)]))
        ply:SetPlayerColor(color:ToVector())
    end
end

function event.PlayerInitialSpawn(ply) ply:SetTeam(1) end

function event.PlayerCanJoinTeam(ply,teamID)
    if ply:IsAdmin() then
        if teamID == 3 then return false end
    else
        if teamID == 2 or teamID == 3 then return false end
    end
end

--function event.ShouldFakePhysgun(ply,ent) return false end