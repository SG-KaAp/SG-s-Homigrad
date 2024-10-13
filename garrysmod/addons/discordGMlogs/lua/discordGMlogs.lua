include("discordGMlogs_config.lua")
-- Функция для отправки сообщения в Discord
function sendDiscordMessage(embed)
    local jsonPayload = util.TableToJSON({
        embeds = {embed},
        attachments =  {},
        content = ""
    })
    print(jsonPayload)
    HTTP( {
        failed = function( reason )
            print( "HTTP request failed", reason )
        end,
        success = function( code, body, headers )
            print( "HTTP request succeeded", code, body, headers )
        end,
        method = "POST",
        url = webhookURL,
        headers = {
            ["Content-Type"] = "application/json",
        },
        body = jsonPayload
    } )
end

-- Событие при подключении игрока
hook.Add("player_connect", "SendDiscordMessageOnPlayerConnect", function(data)
    local embed = {
        title = "Логи",
        description = data.name .. " (" .. data.networkid .. ") подключился к серверу!",
        color = 65280,
    }
    sendDiscordMessage(embed)
end)
hook.Add("PlayerDisconnected", "SendDiscordMessageOnPlayerDisconnected", function(ply)
    local embed = {
        title = "Логи",
        description = ply:GetName() .. " (" .. ply:SteamID() .. ") отключился от сервера!",
        color = 16711680,
    }
    sendDiscordMessage(embed)
end)
hook.Add("DiscordPlayerSpawn", "SendDiscordMessageOnPlayerSpawn", function(ply)
    local embed = {
        title = "Логи",
        description = ply:GetName() .. " (" .. ply:SteamID() .. ") заспавнился!",
        color = 65280,
    }
    sendDiscordMessage(embed)
end)
hook.Add("PlayerSay", "SendDiscordMessageOnPlayerSay", function(ply, text)
    local embed = {
        title = "Логи",
        description = ply:GetName() .. " (" .. ply:SteamID() .. ") сказал в чат: " .. text,
        color = 8716543,
    }
    sendDiscordMessage(embed)
end)
hook.Add("PlayerGiveSWEP", "SendDiscordMessageOnPlayerGiveSWEP", function(ply, weapon)
    local embed = {
        title = "Логи",
        description = ply:GetName() .. " (" .. ply:SteamID() .. ") выдал себе: ".. weapon,
        color = 8716543,
    }
    sendDiscordMessage(embed)
end)
hook.Add("PlayerSpawnedNPC", "SendDiscordMessageOnPlayerSpawnedNPC", function(ply, spawned_npc)
    local embed = {
        title = "Логи",
        description = ply:GetName() .. " (" .. ply:SteamID() .. ") заспавнил NPC",
        color = 8716543,
    }
    sendDiscordMessage(embed)
end)
hook.Add("PlayerSpawnedProp", "SendDiscordMessageOnPlayerSpawnedProp", function(ply, spawned_model, spawned_ent)
    local embed = {
        title = "Логи",
        description = ply:GetName() .. " (" .. ply:SteamID() .. ") заспавнил проп: ".. tostring(spawned_model),
        color = 8716543,
    }
    sendDiscordMessage(embed)
end)