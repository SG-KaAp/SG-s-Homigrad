local char_to_hex = function(c) return string.format("%%%02X", string.byte(c)) end
local function urlencode(url)
	return url:gsub("\n", "\r\n")
		:gsub("([^%w ])", char_to_hex)
		:gsub(" ", "+")
end
if SERVER then
    util.AddNetworkString("tts")
    function EntTTS(text,ent)
        net.Start("tts")
        net.WriteString(text)
        net.WriteEntity(ent)
        net.Broadcast()
    end

    hook.Add("PlayerSay","govorilka.chat",function(ply,text,team)
        if ply:Alive() and !team and (ply:HasPurchase("tts_na_mesyac") or ply:HasPurchase("tts_navsegda")) then
            EntTTS(text,ply)
        end
    end)
end

if CLIENT then
    function EntTTS(text,ent)
        if IsValid(ent) then
            sound.PlayURL("https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=" .. urlencode(text) .. "&tl=ru","3d",function(station)
                if IsValid(station) then
                    station:SetPos(ent:GetPos())
                    station:Play()
                    local id = "tts_ent."..math.random(1,10000000)
                    hook.Add("Think",id,function()
                        if IsValid(ent) then station:SetPos(ent:GetPos()) end
                        if !IsValid(station) then hook.Remove("Think",id) end
                    end)
                end
            end)
        end
    end

    net.Receive("tts",function()
        local text = net.ReadString()
        local ent = net.ReadEntity()
        EntTTS(text,ent)
    end)
end