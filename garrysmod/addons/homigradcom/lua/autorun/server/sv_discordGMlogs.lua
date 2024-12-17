local discordWebhookURL = "https://discord.com/api/webhooks/1290724850607853620/5YZ3vb7nmkXPnuS5TSOpRHxnF2aEP438AvqZ8k5qsoimx7-4jGPeE3GIMRNieBIoieH4"
local discordWebhookURL2 = "https://discord.com/api/webhooks/1300014177032863774/Q9QeK5jmLmCf1_Qh0PukQSfwtvAGbtgGAmoJDUvf_9PNgXwjzrdu-W5497zJijJ0GOoZ"
--local discordWebhookURL = "http://localhost:8080/logs"
local logFooter  = {
    text = "Время: " .. os.date("%d/%m/%Y %H:%M:%S") .. " | DiscordGMlogs by @SG_KaAp",
    icon_url =  "https://cdn.discordapp.com/avatars/963811664594100234/203e267a6a957a316eb00cf214c2e95c.webp?size=80",
}

print("[DiscordGMlogs] Loaded!\n[DiscordGMlogs] DiscordGMlogs by @SG_KaAp")

require("reqwest")
function DiscordSendMessage(message)
    local embed = {
        title = "Логи",
        description = message,
        color = 18431,
        footer = logFooter,
    }
    --sendDiscordMessage(embed,"log", discordWebhookURL)
    sendDiscordMessage(embed, discordWebhookURL)
end
function sendDiscordMessage(embed, webhookURL)
    local jsonPayload = util.TableToJSON({
        embeds = {embed},
        attachments =  {},
        content = ""
    })
    --print(jsonPayload)
    reqwest({
        method = "POST",
        url = webhookURL,
        timeout = 0,
        
        body = jsonPayload,
        type = "application/json",

        headers = {
            ["User-Agent"] = "My User Agent",
        },
    
        --[[success = function(status, body, headers)
            print("HTTP " .. status)
            PrintTable(headers)
            print(body)
        end,
    
        failed = function(err, errExt)
            print("Error: " .. err .. " (" .. errExt .. ")")
        end--]]
    })
end
-- Событие при подключении игрока
hook.Add("PlayerConnect", "SendDiscordMessageOnPlayerConnect", function(name)
    local embed = {
        title = "Логи",
        description = name .. " подключился к серверу!",
        color = 65280,
        footer = logFooter,
    }
    --sendDiscordMessage(embed,"log", discordWebhookURL)
    sendDiscordMessage(embed, discordWebhookURL)
end)
hook.Add("player_connect", "AnnounceConnection", function( data )
	local embed = {
        title = "Логи",
        description = data.name .. " (" .. data.networkid .. ") загружен на сервер!",
        color = 65280,
        footer = logFooter,
    }
    --sendDiscordMessage(embed,"log", discordWebhookURL)
    sendDiscordMessage(embed, discordWebhookURL)
end)
hook.Add("PlayerDisconnected", "SendDiscordMessageOnPlayerDisconnected", function(ply)
    local embed = {
        title = "Логи",
        description = ply:GetName() .. " (" .. ply:SteamID() .. ") отключился от сервера!",
        color = 16711680,
        footer = logFooter,
    }
    --sendDiscordMessage(embed,"log", discordWebhookURL)
    sendDiscordMessage(embed, discordWebhookURL)
end)
hook.Add("DiscordPlayerSpawn", "SendDiscordMessageOnPlayerSpawn", function(ply)
    local embed = {
        title = "Логи",
        description = ply:GetName() .. " (" .. ply:SteamID() .. ") заспавнился!",
        color = 65280,
        footer = logFooter,
    }
    --sendDiscordMessage(embed,"log", discordWebhookURL)
    sendDiscordMessage(embed, discordWebhookURL)
end)

hook.Add("PlayerGiveSWEP", "SendDiscordMessageOnPlayerGiveSWEP", function(ply, weapon)
    local embed = {
        title = "Логи",
        description = ply:GetName() .. " (" .. ply:SteamID() .. ") выдал себе: ".. weapon,
        color = 8716543,
        footer = logFooter,
    }
    --sendDiscordMessage(embed,"log", discordWebhookURL)
    sendDiscordMessage(embed, discordWebhookURL)
end)
hook.Add("PlayerSpawnedNPC", "SendDiscordMessageOnPlayerSpawnedNPC", function(ply, spawned_npc)
    local embed = {
        title = "Логи",
        description = ply:GetName() .. " (" .. ply:SteamID() .. ") заспавнил NPC",
        color = 8716543,
        footer = logFooter,
    }
    --sendDiscordMessage(embed,"log", discordWebhookURL)
    sendDiscordMessage(embed, discordWebhookURL)
end)
hook.Add("PlayerSpawnedProp", "SendDiscordMessageOnPlayerSpawnedProp", function(ply, spawned_model, spawned_ent)
    local embed = {
        title = "Логи",
        description = ply:GetName() .. " (" .. ply:SteamID() .. ") заспавнил проп: ".. tostring(spawned_model),
        color = 8716543,
        footer = logFooter,
    }
    --sendDiscordMessage(embed,"log", discordWebhookURL)
    sendDiscordMessage(embed, discordWebhookURL)
end)

-- Admin's logs
hook.Add("PlayerSay", "SendDiscordMessageOnPlayerSay", function(ply, text)
    local embed = {
        title = "Логи",
        description = ply:GetName() .. " (" .. ply:SteamID() .. ") сказал в чат: " .. text,
        color = 8716543,
        footer = logFooter,
    }
    --sendDiscordMessage(embed,"log2", discordWebhookURL)
    sendDiscordMessage(embed,discordWebhookURL2)
end)
hook.Add( "PlayerDeath", "SendDiscordMessageOnPlayerDeath", function( ply, inflictor, attacker )
        local embed = {
            title = "Логи",
            description = ply:GetName() .. " (" .. ply:SteamID() .. ") был убит " .. attacker .. " (" .. attacker:SteamID() .. ") с помощью " .. inflictor:GetClass(),
            color = 8716543,
            footer = logFooter,
        }
        --sendDiscordMessage(embed,"log2", discordWebhookURL)
    sendDiscordMessage(embed,discordWebhookURL2)
end )
hook.Add("ULibPlayerKicked", "SendDiscordMessageOnULibPlayerKicked", function(id, reason, admin)
    local embed = {
        title = "Логи",
        description = id .. " кикнут по причине: " .. reason .. " админом: " .. admin,
        color = 8716543,
        footer = logFooter,
    }
    --sendDiscordMessage(embed,"log2", discordWebhookURL)
    sendDiscordMessage(embed,discordWebhookURL)
end)
hook.Add("ULibPlayerBanned", "SendDiscordMessageOnUlibPlayerBanned", function(steamid, ban_data)
    local embed = {
        title = "Логи",
        description = ban_data.ply .. " (" .. steamid .. " ) забанен по причине: " .. ban_data.reason .. " админом: " .. ban_data.admin .. " на: " .. ban_data.time .. " секунд",
        color = 8716543,
        footer = logFooter,
    }
    --sendDiscordMessage(embed,"log2", discordWebhookURL)
    sendDiscordMessage(embed,discordWebhookURL)
end)
hook.Add("ULibPlayerUnBanned", "SendDiscordMessageOnULibPlayerUnBanned", function(id, admin)
    local embed = {
        title = "Логи",
        description = id .. " разбанен админом: " .. admin,
        color = 8716543,
        footer = logFooter,
    }
    --sendDiscordMessage(embed,"log2", discordWebhookURL)
    sendDiscordMessage(embed,discordWebhookURL)
end)