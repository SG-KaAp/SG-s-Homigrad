if SERVER then function ScrW() return 1920 end function ScrH() return 1080 end end cats = cats or {} cats.config = {}

cats.config.spawnSize = { 450, 220 }

cats.config.spawnPosAdmin = { ScrW() - 500, 50 }

cats.config.spawnPosUser = { ScrW() - 500, ScrH() - 250 }

cats.config.punchCardMode = 'dots' 

cats.config.punchCardStart = 5

cats.config.defaultRating = 3

cats.config.ratingTimeout = 60

cats.config.newTicketSound = 'buttons/bell1.wav'

cats.lang = {

    openTickets = "Открытые жалобы",

    myTicket = "Моя жалоба",

    userDisconnected = "Пользователь вышел",

    claimedBy = "Разбирается",

    sendMessage = "Написать сообщение...",

    typeYourMessage = "Введите сообщение:",

    actions = "Действия",

    action_claim = "Взять жалобу",

    action_unclaim = "Передать жалобу",

    action_spectate = "Наблюдать",

    action_goto = "К нему",

    action_bring = "К себе",

    action_return = "Вернуть на место",

    action_returnself = "Вернуться на место",

    action_copySteamID = "Скопировать SteamID",

    action_callon = "Включить просьбу о помощи",

    action_calloff = "Выключить просьбу о помощи",

    action_close = "Закрыть жалобу",

    error_wait = "Тихо-тихо... Куда так разогнался?",

    error_noAccess = "Ошибка доступа",

    error_playerNotFound = "Игрок не найден",

    error_ticketNotEnded = "Жалоба не закрыта",

    error_ticketNotFound = "Жалоба не найдена",

    error_ticketEnded = "Жалоба уже решена",

    error_ticketNotClaimed = "Жалоба никем не взята",

    error_ticketAlreadyClaimed = "Жалоба уже взята",

    error_needToRate = "Ты должен оценить прошлую жалобу!",

	error_cantCancelHasAdmin = "Нельзя отменить жалобу, которую рассматривают",

    ticketClaimed = "Жалоба взята",

    ticketUnclaimed = "Жалоба отдана",

    ticketClaimedBy = "Твою жалобу принял %s",

    ticketUnclaimedBy = "Твоя жалоба передана",

    ticketClosed = "Жалоба закрыта",

    ticketClosedBy = "%s закрыл жалобу. Оцени его работу!",

    ticketRatedForAdmin = "Оценка по твоей жалобе: %s",

    ticketRatedForUser = "Ты оценил решение жалобы на %s",

    ticketUserLeft = "Пользователь, чью жалобу ты решал, вышел",

    rateAdmin = "Нажми ниже, чтобы выбрать оценку",

    ok = "Готово",

    cancel = "Отмена",

    ticket_noAdmins = "На сервере нет администраторов",

    dow = {"ПН","ВТ","СР","ЧТ","ПТ","СБ","ВС"},

}

cats.config.serverID = "Cats"

cats.config.getPlayerName = function(ply)

    return ply:Name()

end

cats.config.playerCanSeeTicket = function(ply, ticketSteamID)

    return ply:query("cats_see_requests") or ply:SteamID() == ticketSteamID

end

cats.config.triggerText = function(ply, text)

    if cats.config.playerCanSeeTicket(ply, "") then return false end



    text = text:Trim()

    if text:sub(1,1) == '@' then

        return true, text:sub(2):Trim()

    elseif text:sub(1,3) == '///' then

        return true, text:sub(4):Trim()

    end



    return false

end

cats.config.notify = function(ply, msg, type, duration)

    if IsValid(ply) then

        --DarkRP.notify(ply, type, duration, msg)

    else

        --DarkRP.notifyAll(type, duration, msg)

    end

end

cats.config.commands = {

    {

        text = cats.lang.action_spectate,

        icon = 'camera_go',

        click = function(ply)

            RunConsoleCommand('FSpectate', ply:SteamID())

        end

    },

    {

        text = cats.lang.action_bring,

        icon = 'user_go',

        click = function(ply)

            RunConsoleCommand('ulx', 'bring', ply:Name())

        end

    },

    {

        text = cats.lang.action_return,

        icon = 'arrow_undo',

        click = function(ply)

            RunConsoleCommand('ulx', 'return', ply:Name())

        end

    },

    {

        text = cats.lang.action_goto,

        icon = 'arrow_right',

        click = function(ply)

            RunConsoleCommand('ulx', 'goto', ply:Name())

        end

    },

    {

        text = cats.lang.action_returnself,

        icon = 'arrow_rotate_clockwise',

        click = function(ply)

            RunConsoleCommand('ulx', 'return', LocalPlayer():Name())

        end

    },

    {

        text = cats.lang.action_copySteamID,

        icon = 'key_go',

        click = function(ply)

            SetClipboardText( ply:SteamID() )

        end

    },

}

if SERVER then

    ScrW = nil ScrH = nil

    hook.Add("InitPostEntity", "cats", function()

        ULib.ucl.registerAccess('cats_see_requests', ULib.ACCESS_ADMIN, "Возможность видеть админ-запросы", "Team")

    end)

end

-- vk.com/urbanichka