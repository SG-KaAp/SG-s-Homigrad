table.insert(LevelList,"sandbox")
sandbox = {}
sandbox.Name = "Sandbox"

function sandbox.StartRound(data)
	game.CleanUpMap(false)

	if CLIENT then
        wait = data[1]

        return
    end

    sandbox.StartRoundSV()
end

if SERVER then return end

function sandbox.CanUseSpawnMenu() return GetGlobalVar("Can",true) end

local gray = Color(122,122,122,255)

function sandbox.GetTeamName(ply)
    local teamID = ply:Team()

    if ply:Team() == 1 then
        return "Sandboxer",gray
    end
end

function sandbox.HUDPaint_RoundLeft()
    local time = math.Round((wait or 0) - CurTime())

    if time > 0 then
        local acurcetime = string.FormattedTime(time,"%02i:%02i")
        acurcetime = "До окончания строительства : " .. acurcetime

        draw.SimpleText(acurcetime,"HomigradFont",ScrW() / 2,ScrH() - 25,white,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
    end
end