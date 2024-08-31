local menuOpen = false

MenuHandler = function(trigger)
    if trigger == 'Cloakroom' then
        Cloakroom()
    end
end

Cloakroom = function(mekname)
    local gender = 'Male'
    local cloakroom_menu = {}
    
    TriggerEvent("skinchanger:getSkin", function(skin)
        if skin.sex == 0 then
            gender = 'Male'
        
        else
            gender = 'Female'
        end
    end)
    
    for k, v in ipairs(Config.Cloakroom[mekname][gender]) do
        table.insert(cloakroom_menu, {label = v.label, value = k})
    end
    
    ESX.UI.Menu.Open("default", GetCurrentResourceName(), "cloakroom", {
        title = 'Omklædning',
        align = "top-left",
        elements = cloakroom_menu
    }, function(data, menu)
        
        if Config.Cloakroom[mekname][gender][data.current.value].action == 'civil' then
            ESX.TriggerServerCallback("esx_skin:getPlayerSkin", function(skin, jobSkin)
                local isMale = skin.sex == 0
                TriggerEvent("skinchanger:loadDefaultModel", isMale, function()
                    ESX.TriggerServerCallback("esx_skin:getPlayerSkin", function(skin)
                        TriggerEvent("skinchanger:loadSkin", skin)
                    end)
                end)
            end)
        else
            local playerPed = PlayerPedId()
            setUniform(Config.Cloakroom[mekname][gender][data.current.value].cloth, playerPed)
        end
    end, function(data, menu)
        menu.close()
    end)
end

GenerateMenu = function(menuItems, meta)
    local menuElements = {}
    local title = nil
    
    if menuItems.menu ~= nil then
        for k, v in ipairs(menuItems.menu) do
            if v.title then
                title = v.title
            else
                if v.type then
                    if v.type == 'slider' then
                        table.insert(menuElements, {label = v.label, value = v.action, id = k, menu = v.menu, data = v.data, type = v.type, value = v.data.value, min = v.data.min, max = v.data.max})
                    end
                else
                    table.insert(menuElements, {label = v.label, value = v.action, id = k, menu = v.menu, data = v.data})
                end
            end
        end
    else
        for k, v in ipairs(menuItems) do
            if v.title then
                title = v.title
            else
                if v.type then
                    if v.type == 'slider' then
                        table.insert(menuElements, {label = v.label, value = v.action, id = k, menu = v.menu, data = v.data, type = v.type, value = v.data.value, min = v.data.min, max = v.data.max})
                    end
                else
                    table.insert(menuElements, {label = v.label, value = v.action, id = k, menu = v.menu, data = v.data})
                end
            end
        end
    end
    
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open("default", GetCurrentResourceName(), "menu_generator_" .. math.random(1000, 9999), {
        title = title,
        align = "top-left",
        elements = menuElements
    }, function(data, menu)
        if data.current.menu == nil then
            menu.close()
            
            if meta and data.current.data then
                functionHandler(data.current.value, data.current.data, meta)
            elseif meta then
                functionHandler(data.current.value, '', meta)
            elseif data.current.data then
                functionHandler(data.current.value, data.current.data, '')
            else
                functionHandler(data.current.value, '', '')
            end
        else
            GenerateMenuSec(data.current.menu, meta)
        end
    end, function(data, menu)
        menu.close()
    end)
end

GenerateMenuSec = function(menuItems, meta)
    local menuElements = {}
    local title = nil
    
    if menuItems.menu ~= nil then
        for k, v in ipairs(menuItems.menu) do
            if v.title then
                title = v.title
            else
                table.insert(menuElements, {label = v.label, value = v.action, id = k, menu = v.menu, data = v.data})
            end
        end
    else
        for k, v in ipairs(menuItems) do
            if v.title then
                title = v.title
            else
                table.insert(menuElements, {label = v.label, value = v.action, id = k, menu = v.menu, data = v.data})
            end
        end
    end
    
    ESX.UI.Menu.Open("default", GetCurrentResourceName(), "menu_generator_" .. math.random(1000, 9999), {
        title = title,
        align = "top-left",
        elements = menuElements
    }, function(data2, menu2)
        if data2.current.menu == nil then
            menu2.close()
            if meta and data2.current.data then
                functionHandler(data2.current.value, data2.current.data, meta)
            elseif meta then
                functionHandler(data2.current.value, '', meta)
            elseif data2.current.data then
                functionHandler(data2.current.value, data2.current.data, '')
            else
                functionHandler(data2.current.value, '', '')
            end
        else
            GenerateMenu(data2.current.menu, meta)
        end
    end, function(data2, menu2)
        menu2.close()
    end)
end
