function alko.StartRoundSV()
    tdm.RemoveItems()

	roundTimeStart = CurTime()
	roundTime = 60 * (1 + math.min(#player.GetAll() / 8,2))

    local players = PlayersInGame()
    for i,ply in pairs(players) do ply:SetTeam(1) end

    local aviable = ReadDataMap("alko")
    aviable = #aviable ~= 0 and aviable or homicide.Spawns()
    tdm.SpawnCommand(team.GetPlayers(1),aviable,function(ply)
        ply:Freeze(true)
    end)

    freezing = true

    RTV_CountRound = RTV_CountRound - 1

    roundTimeRespawn = CurTime() + 15

    roundalkoType = math.random(1,4)

    return {roundTimeStart,roundTime}
end

function alko.RoundEndCheck()
    local Alive = 0

    for i,ply in pairs(team.GetPlayers(1)) do
        if ply:Alive() then Alive = Alive + 1 end
    end

    if freezing and roundTimeStart + alko.LoadScreenTime < CurTime() then
        freezing = nil

        for i,ply in pairs(team.GetPlayers(1)) do
            ply:Freeze(false)
        end
    end

    if Alive <= 1 then EndRound() return end

end

function alko.EndRound(winner)
    for i, ply in ipairs( player.GetAll() ) do
	    if ply:Alive() then
            PrintMessage(3,ply:GetName() .. " победил в данном раунде.")
        end
    end
end

local red = Color(255,0,0)

function alko.PlayerSpawn(ply,teamID)
	ply:SetModel(tdm.models[math.random(#tdm.models)])
    ply:SetPlayerColor(Vector(0,0,0.6))


    ply:Give("weapon_hands")
    ply:Give("food_beer")
    ply:Give("weapon_pipe")

    ply:SetLadderClimbSpeed(100)

end

function alko.PlayerInitialSpawn(ply)
    ply:SetTeam(1)
end

function alko.PlayerCanJoinTeam(ply,teamID)
	if teamID == 2 or teamID == 3 then ply:ChatPrint("пашол нахуй") return false end

    return true
end

function alko.GuiltLogic() return false end

util.AddNetworkString("alko die")
function alko.PlayerDeath()
    net.Start("alko die")
    net.Broadcast()
end