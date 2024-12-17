table.insert(LevelList,"event")
event = {}
event.Name = "Ивент"

function event.StartRound(data)
	game.CleanUpMap(false)

	if CLIENT then
        wait = data[1]

        return
    end

    event.StartRoundSV()
end

if SERVER then return end

local gray = Color(122,122,122,255)

function event.GetTeamName(ply)
    local teamID = ply:Team()

    if ply:Team() == 1 then
        return "Игрок",gray
    end
    if ply:Team() == 2 then
        return "Ивентёр",gray
    end
end