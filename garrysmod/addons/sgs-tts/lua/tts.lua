hook.Add("PlayerSay", "TTSChatText", function(ply, text)
    local ttsurl = "https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=" .. text .. "&tl=ru"
    local g_station = nil
    sound.PlayURL (ttsurl, "3d", function( ttsSound )
        if ( IsValid( ttsSound ) ) then
            ttsSound:Play()
            g_station = station
        end
    end)
end)