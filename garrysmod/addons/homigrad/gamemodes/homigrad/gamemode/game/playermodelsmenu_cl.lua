--Создаём переменные
local ply = LocalPlayer()
local playerModels = player_manager.AllValidModels()
local faded_black = Color(15,15,15,200)

concommand.Add("hg_playermodels", function(ply)
    --Создаем VGUI панель
    local scrw,scrh = ScrW(),ScrH()
    local playerModelsPanel = vgui.Create( "DFrame" )
    playerModelsPanel:SetSize(scrw*.3,scrh*.4) 
    playerModelsPanel:SetTitle( "Игровые модели" ) 
    playerModelsPanel:SetVisible( true ) 
    playerModelsPanel:SetDraggable( true ) 
    playerModelsPanel:ShowCloseButton( true ) 
    playerModelsPanel:MakePopup()
    playerModelsPanel:Center()
    playerModelsPanel.Paint = function(self, w, h)
        draw.RoundedBox(10, 0, 0, w, h, faded_black)
    end
    local playerModelsTextEmtry = vgui.Create("DTextEntry", playerModelsPanel)
    playerModelsTextEmtry:SetPos(10, 20)
    playerModelsTextEmtry:SetSize(280, 20)
    playerModelsTextEmtry:SetPlaceholderText("Имя модели")
    playerModelsTextEmtry:SetDrawOnTop(true)

    --Создаем VGUI список для отображения доступных playermodel
    local playerModelsList = vgui.Create("DListView", playerModelsPanel)
    playerModelsList:SetSize(280, 350)
    playerModelsList:SetPos(10, 45)
    playerModelsList:AddColumn("Модель")

    --Создаем DModelPanel для отображения модели
    local playerModelIcon = vgui.Create("DModelPanel", playerModelsPanel)
	playerModelIcon:SetSize(280, 350)
    playerModelIcon:SetPos(310, 30)
	playerModelIcon:SetDirectionalLight( BOX_RIGHT, Color( 255, 160, 80, 255 ) )
	playerModelIcon:SetDirectionalLight( BOX_LEFT, Color( 80, 160, 255, 255 ) )
	playerModelIcon:SetAmbientLight( Vector( -64, -64, -64 ) )
	playerModelIcon:SetAnimated( true )

    --Создаём кнопку для применения модели
    local setModelButton = vgui.Create("DButton", playerModelsPanel)
    setModelButton:SetPos(300, 390)
    setModelButton:SetSize(120, 30)
    setModelButton:SetText("Поставить модель")
    setModelButton.DoClick = function()
        LocalPlayer():ConCommand("ulx setmodel " .. '"' .. ply:GetName() .. '" "' .. playerModelIcon:GetModel() .. '"')
    end

    local copyModelNameButton = vgui.Create("DButton", playerModelsPanel)
    copyModelNameButton:SetPos(450, 390)
    copyModelNameButton:SetSize(120, 30)
    copyModelNameButton:SetText("Скопировать модель")
    copyModelNameButton.DoClick = function()
        SetClipboardText(playerModelIcon:GetModel())
		LocalPlayer():ChatPrint("Имя модели " .. playerModelIcon:GetModel() .. " скопирована!")
    end
    
    --Добавляем все модели в список
    for k, v in pairs(playerModels) do
        playerModelsList:AddLine(v)
    end

    --Обработчик для списка
    playerModelsList.OnRowSelected = function(self, index, row)
        local modelName = row:GetColumnText(1)
        playerModelIcon:SetModel(modelName)
    end
    playerModelsTextEmtry.OnValueChange = function()
        local value = string.lower(playerModelsTextEmtry:GetValue())
        playerModelsList:Clear()
        for i, v in pairs(playerModels) do
            if string.find(v, value) then
                playerModelsList:AddLine(string.lower(v))
            end
        end
    end
end)