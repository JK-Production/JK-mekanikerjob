functionHandler = function(command, data, meta)
    if isBusy then
        return
    end
    
    if command == 'cloakroom' then
        Cloakroom(data)
    end
    
    if command == 'vehicle' then
        spawnVehicle(data, meta)
    end
    
    if command == 'attach_detach_flatbed' then
        attatchDetachFlatbed()
    end
    
    if command == 'force_open_vehicle' then
        forceOpenVehicle()
    end
    
    if command == 'fix_vehicle' then
        fixVehicle()
    end
    
    if command == 'clean_vehicle' then
        cleanVehicle()
    end
    
    if command == 'delete_vehicle' then
        deleteVehicle()
    end
    
    if command == 'spawn_object' then
        spawnObject(data)
    end
    
    if command == 'delete_props_zone' then
        deleteObjects()
    end
    
    if command == 'billing' then
        BillingSelectPlayer(player)
    end
    
    if command == 'call_list' then
        ExecuteCommand("opkaldsliste")
    end
    
    if command == 'boss' then
        TriggerServerEvent("esx_jobs:openCompanyAdmin")
    end
end

setUniform = function(job, playerPed)
    TriggerEvent("skinchanger:getSkin", function(skin)
        if skin.sex == 0 then
            if job ~= nil then
                TriggerEvent("skinchanger:loadClothes", skin, job)
            else
                ESX.ShowNotification(_U("no_outfit"))
            end
        end
        
        if skin.sex ~= 0 then
            if job ~= nil then
                TriggerEvent("skinchanger:loadClothes", skin, job)
            else
                ESX.ShowNotification(_U("no_outfit"))
            end
        end
    end)
end

spawnVehicle = function(data, meta)
    coords = meta.coords
    heading = meta.heading
    
    if data.model == 'mekflatbed' then
        coords = Config.MechanicLocations[meta.location].FlatBed.SpawnPoint
        heading = Config.MechanicLocations[meta.location].FlatBed.Heading
    end
    
    ESX.Game.SpawnVehicle(data.model, coords, heading, function(vehicle)
        local playerPed = PlayerPedId()
        
        if data.vehicleProperies then
            ESX.Game.SetVehicleProperties(vehicle, json.decode(data.vehicleProperies))
        end
        
        exports['t1ger_keys']:GiveTemporaryKeys(GetVehicleNumberPlateText(vehicle), GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)), "MEK")
        
        local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
        
        if data.primaryColor and data.secondaryColor and not data.vehicleProperies then
            SetVehicleColours(vehicle, data.primaryColor, data.secondaryColor)
        end
        
        if data.livery and not data.vehicleProperies then
            SetVehicleModKit(vehicle, 0)
            SetVehicleMod(vehicle, 48, data.livery, false)
            SetVehicleLivery(vehicle, data.livery)
        end
        
        if data.model == 'mekflatbed' then
            spawnedFlatbed = vehicle
        end
        
        --exports["LegacyFuel"]:SetFuel(vehicle, 100)
    end)
end

spawnVehicle = function(data, meta)
    coords = meta.coords
    heading = meta.heading
    
    if data.model == 'mekflatbed2auto' or data.model == 'mekflatbed2lsc' then
        coords = Config.MechanicLocations[meta.location].FlatBed.SpawnPoint
        heading = Config.MechanicLocations[meta.location].FlatBed.Heading
    end
    
    ESX.Game.SpawnVehicle(data.model, coords, heading, function(vehicle)
        local playerPed = PlayerPedId()
        
        if data.vehicleProperies then
            ESX.Game.SetVehicleProperties(vehicle, json.decode(data.vehicleProperies))
        end
        
        exports['t1ger_keys']:GiveTemporaryKeys(GetVehicleNumberPlateText(vehicle), GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)), "MEK")
        
        local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
        
        if data.primaryColor and data.secondaryColor and not data.vehicleProperies then
            SetVehicleColours(vehicle, data.primaryColor, data.secondaryColor)
        end
        
        if data.livery and not data.vehicleProperies then
            SetVehicleModKit(vehicle, 0)
            SetVehicleMod(vehicle, 48, data.livery, false)
            SetVehicleLivery(vehicle, data.livery)
        end
        
        if data.model == 'mekflatbed2auto' or data.model == 'mekflatbed2lsc' then
            spawnedFlatbed = vehicle
        end
        
        --exports["LegacyFuel"]:SetFuel(vehicle, 100)
    end)
end

BillingSelectPlayer = function()
    local playerPed = PlayerPedId()
    
    local playersNearby = ESX.Game.GetPlayersInArea(GetEntityCoords(playerPed), 5.0)
    local elements = {}
    
    if #playersNearby > 0 then
        for i = 1, #playersNearby, 1 do
            if playersNearby[i] ~= PlayerId() then
                table.insert(elements, {label = GetPlayerName(playersNearby[i]), value = playersNearby[i]})
            end
        end
        
        if #elements > 0 then
            ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'select_player', {
                title = 'Faktura',
                align = 'top-left',
                elements = elements,
            }, function(data, menu)
                billing(data.current.value)
                menu.close()
            end, function(data, menu)
                menu.close()
            end)
        else
            ESX.ShowNotification('Ingen spillere i nærheden')
        end
    else
        ESX.ShowNotification('Ingen spillere i nærheden')
    end
end
