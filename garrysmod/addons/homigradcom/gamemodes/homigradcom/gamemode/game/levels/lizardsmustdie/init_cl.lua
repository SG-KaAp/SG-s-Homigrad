lizardsmustdie.GetTeamName = tdm.GetTeamName

local playsound = false
local bhop
function lizardsmustdie.StartRoundCL()
end


function lizardsmustdie.HUDPaint_RoundLeft(white)
    local lply = LocalPlayer()
	local name,color = lizardsmustdie.GetTeamName(lply)

	local startRound = roundTimeStart + 5 - CurTime()
    if startRound > 0 and lply:Alive() then
        if playsound then
        end
        lply:ScreenFade(SCREENFADE.IN,Color(0,0,0,255),0.5,0.5)
        draw.DrawText( "Ваша команда " .. name, "HomigradFontBig", ScrW() / 2, ScrH() / 2, Color( color.r,color.g,color.b,math.Clamp(startRound - 0.5,0,1) * 255 ), TEXT_ALIGN_CENTER )
        draw.DrawText( "РУСЫ ПРОТИВ ЯЩЕРОВ", "HomigradFontBig", ScrW() / 2, ScrH() / 8, Color( 155,155,155,math.Clamp(startRound - 0.5,0,1) * 255 ), TEXT_ALIGN_CENTER )
        if name == "РУСЫ" then
            draw.DrawText( "На славный град вблизи байкала напали ящеры бухие, отстоите его!", "HomigradFontBig", ScrW() / 2, ScrH() / 1.2, Color( 155,155,155,math.Clamp(startRound - 0.5,0,1) * 255 ), TEXT_ALIGN_CENTER )
        else
            draw.DrawText( "Во славу ящерских ящеров захатите град байкальский!", "HomigradFontBig", ScrW() / 2, ScrH() / 1.2, Color( 155,155,155,math.Clamp(startRound - 0.5,0,1) * 255 ), TEXT_ALIGN_CENTER )
        end
        return
    end

    --draw.SimpleText(acurcetime,"HomigradFont",ScrW()/2,ScrH()-25,white,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
end