exports.qtarget:AddTargetBone({'wheel_lf', 'hub_lf'},{
	options = {
		{
			icon = "fa-solid fa-circle-info",
			label = "Skift Dækket",
            required_item = "tire",
			action = function(entity)
				fixWheel(entity, 0)
			end,
            canInteract = function(entity)
                return IsVehicleTyreBurst(entity, 0, false)
            end,
		},
		{
			icon = "fa-solid fa-circle-info",
			label = "Skift Dækket (Mekaniker)",
            job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				fixWheelMechanic(entity, 0)
			end,
            canInteract = function(entity)
                return IsVehicleTyreBurst(entity, 0, false)
            end,
		},
		{
			icon = "fa-solid fa-thumbtack",
			label = "Punkter Dæk",
			action = function(entity)
				slashTire(entity, 0)
			end,
            canInteract = function(entity)
				local ped = PlayerPedId()
    			local currentWeapon = GetSelectedPedWeapon(ped)
				if currentWeapon == -1716189206 or currentWeapon == -1834847097 or currentWeapon == -538741184 then
					if not IsVehicleTyreBurst(entity, 0, false) then
						return true
					end
				end

                return false
            end,
		},
	},
    distance = 1.2
})

exports.qtarget:AddTargetBone({'wheel_rf', 'hub_rf'},{
	options = {
		{
			icon = "fa-solid fa-circle-info",
			label = "Skift Dækket",
            required_item = "tire",
			action = function(entity)
				fixWheel(entity, 1)
			end,
            canInteract = function(entity)
                return IsVehicleTyreBurst(entity, 1, false)
            end,
		},
		{
			icon = "fa-solid fa-circle-info",
			label = "Skift Dækket (Mekaniker)",
            job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				fixWheelMechanic(entity, 1)
			end,
            canInteract = function(entity)
                return IsVehicleTyreBurst(entity, 1, false)
            end,
		},
		{
			icon = "fa-solid fa-thumbtack",
			label = "Punkter Dæk",
			action = function(entity)
				slashTire(entity, 1)
			end,
            canInteract = function(entity)
				local ped = PlayerPedId()
    			local currentWeapon = GetSelectedPedWeapon(ped)
				if currentWeapon == -1716189206 or currentWeapon == -1834847097 or currentWeapon == -538741184 then
					if not IsVehicleTyreBurst(entity, 1, false) then
						return true
					end
				end

                return false
            end,
		},
	},
    distance = 1.2
})

exports.qtarget:AddTargetBone({'wheel_lm1', 'hub_lm1'},{
	options = {
		{
			icon = "fa-solid fa-circle-info",
			label = "Skift Dækket",
            required_item = "tire",
			action = function(entity)
				fixWheel(entity, 2)
			end,
            canInteract = function(entity)
                return IsVehicleTyreBurst(entity, 2, false)
            end,
		},
		{
			icon = "fa-solid fa-circle-info",
			label = "Skift Dækket (Mekaniker)",
            job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				fixWheelMechanic(entity, 2)
			end,
            canInteract = function(entity)
                return IsVehicleTyreBurst(entity, 2, false)
            end,
		},
		{
			icon = "fa-solid fa-thumbtack",
			label = "Punkter Dæk",
			action = function(entity)
				slashTire(entity, 2)
			end,
            canInteract = function(entity)
				local ped = PlayerPedId()
    			local currentWeapon = GetSelectedPedWeapon(ped)
				if currentWeapon == -1716189206 or currentWeapon == -1834847097 or currentWeapon == -538741184 then
					if not IsVehicleTyreBurst(entity, 2, false) then
						return true
					end
				end

                return false
            end,
		},
	},
    distance = 1.2
})

exports.qtarget:AddTargetBone({'wheel_rm1', 'hub_rm1'},{
	options = {
		{
			icon = "fa-solid fa-circle-info",
			label = "Skift Dækket",
            required_item = "tire",
			action = function(entity)
				fixWheel(entity, 3)
			end,
            canInteract = function(entity)
                return IsVehicleTyreBurst(entity, 3, false)
            end,
		},
		{
			icon = "fa-solid fa-circle-info",
			label = "Skift Dækket (Mekaniker)",
            job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				fixWheelMechanic(entity, 3)
			end,
            canInteract = function(entity)
                return IsVehicleTyreBurst(entity, 3, false)
            end,
		},
		{
			icon = "fa-solid fa-thumbtack",
			label = "Punkter Dæk",
			action = function(entity)
				slashTire(entity, 3)
			end,
            canInteract = function(entity)
				local ped = PlayerPedId()
    			local currentWeapon = GetSelectedPedWeapon(ped)
				if currentWeapon == -1716189206 or currentWeapon == -1834847097 or currentWeapon == -538741184 then
					if not IsVehicleTyreBurst(entity, 3, false) then
						return true
					end
				end

                return false
            end,
		},
	},
    distance = 1.2
})

exports.qtarget:AddTargetBone({'wheel_lr', 'hub_lr'},{
	options = {
		{
			icon = "fa-solid fa-circle-info",
			label = "Skift Dækket",
            required_item = "tire",
			action = function(entity)
				fixWheel(entity, 4)
			end,
            canInteract = function(entity)
                return IsVehicleTyreBurst(entity, 4, false)
            end,
		},
		{
			icon = "fa-solid fa-circle-info",
			label = "Skift Dækket (Mekaniker)",
            job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				fixWheelMechanic(entity, 4)
			end,
            canInteract = function(entity)
                return IsVehicleTyreBurst(entity, 4, false)
            end,
		},
		{
			icon = "fa-solid fa-thumbtack",
			label = "Punkter Dæk",
			action = function(entity)
				slashTire(entity, 4)
			end,
            canInteract = function(entity)
				local ped = PlayerPedId()
    			local currentWeapon = GetSelectedPedWeapon(ped)
				if currentWeapon == -1716189206 or currentWeapon == -1834847097 or currentWeapon == -538741184 then
					if not IsVehicleTyreBurst(entity, 4, false) then
						return true
					end
				end

                return false
            end,
		},
	},
    distance = 1.2
})

exports.qtarget:AddTargetBone({'wheel_rr', 'hub_rr'},{
	options = {
		{
			icon = "fa-solid fa-circle-info",
			label = "Skift Dækket",
            required_item = "tire",
			action = function(entity)
				fixWheel(entity, 5)
			end,
            canInteract = function(entity)
                return IsVehicleTyreBurst(entity, 5, false)
            end,
		},
		{
			icon = "fa-solid fa-circle-info",
			label = "Skift Dækket (Mekaniker)",
            job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				fixWheelMechanic(entity, 5)
			end,
            canInteract = function(entity)
                return IsVehicleTyreBurst(entity, 5, false)
            end,
		},
		{
			icon = "fa-solid fa-thumbtack",
			label = "Punkter Dæk",
			action = function(entity)
				slashTire(entity, 5)
			end,
            canInteract = function(entity)
				local ped = PlayerPedId()
    			local currentWeapon = GetSelectedPedWeapon(ped)
				if currentWeapon == -1716189206 or currentWeapon == -1834847097 or currentWeapon == -538741184 then
					if not IsVehicleTyreBurst(entity, 5, false) then
						return true
					end
				end

                return false
            end,
		},
	},
    distance = 1.2
})

exports.qtarget:AddTargetBone({'bumper_f', 'bumper_r', 'bodyshell'},{
	options = {
		{
			icon = "fa-solid fa-truck-flatbed",
			label = "Sæt på flatbed",
            job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				attatchDetachFlatbed(entity)
			end,
            canInteract = function(entity)
				if spawnedFlatbed ~= nil and attachedVehicle == nil and spawnedFlatbed ~= entity then
					return true
				end

                return false
            end,
		},
		{
			icon = "fa-solid fa-soap",
			label = "Vask Køretøjet",
			job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				cleanVehicle(entity)
			end
		},
		{
			icon = "fa-solid fa-trash",
			label = "Fjern køretøjet",
			job = {['mecano'] = 0, ['lsc'] = 0, ['police'] = 0},
			action = function(entity)
				deleteVehicle(entity)
			end
		},
		{
			icon = "fa-solid fa-screwdriver-wrench",
			label = "Reparer Motor",
			job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				fixVehicle(entity, 4)
			end,
			canInteract = function(entity)
				local vehicleClass = GetVehicleClass(entity)
				if vehicleClass == 14 or vehicleClass == 15 then
					return true
				end

                return insideRepairZone
            end,
		},
		{
			icon = "fa-solid fa-screwdriver-wrench",
			label = "Nød Reparer Motor",
			job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				fixVehicle(entity, 5)
			end,
			canInteract = function(entity)
				local vehicleClass = GetVehicleClass(entity)
				if vehicleClass == 14 or vehicleClass == 15 then
					return false
				end
				if not insideRepairZone then
					return true
				end

				return false
			end
		},
	},
    distance = 1.5
})

-- Defaults --

exports.qtarget:AddTargetBone({'seat_dside_f'},{
	options = {
		{
			icon = "fa-solid fa-door-open",
			label = "Åben fordøren",
			action = function(entity)
				toggleDoor(entity, 0)
			end,
            canInteract = function(entity)
				return GetEntityBoneIndexByName(entity, 'door_dside_f') ~= -1
			end
		},
		{
			icon = "fa-solid fa-soap",
			label = "Vask Køretøjet",
			job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				cleanVehicle(entity)
			end
		},
		{
			icon = "fa-solid fa-trash",
			label = "Fjern køretøjet",
			job = {['mecano'] = 0, ['lsc'] = 0, ['police'] = 0},
			action = function(entity)
				deleteVehicle(entity)
			end
		},
		{
            icon = "fa-solid fa-file",
            label = "Fjern solfilm",
            job = {['mecano'] = 0, ['lsc'] = 0, ['police'] = 0},
            action = function(entity)
				removeTint(entity)
			end
        }
	},
    distance = 1.2
})

exports.qtarget:AddTargetBone({'seat_pside_f'},{
	options = {
		{
			icon = "fa-solid fa-door-open",
			label = "Åben fordøren",
			action = function(entity)
				toggleDoor(entity, 1)
			end,
            canInteract = function(entity)
				return GetEntityBoneIndexByName(entity, 'seat_pside_f') ~= -1
			end
		},
		{
			icon = "fa-solid fa-soap",
			label = "Vask Køretøjet",
			job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				cleanVehicle(entity)
			end
		},
		{
			icon = "fa-solid fa-trash",
			label = "Fjern køretøjet",
			job = {['mecano'] = 0, ['lsc'] = 0, ['police'] = 0},
			action = function(entity)
				deleteVehicle(entity)
			end
		},
		{
            icon = "fa-solid fa-file",
            label = "Fjern solfilm",
            job = {['mecano'] = 0, ['lsc'] = 0, ['police'] = 0},
            action = function(entity)
				removeTint(entity)
			end
        }
	},
    distance = 1.2
})

exports.qtarget:AddTargetBone({'seat_dside_r'},{
	options = {
		{
			icon = "fa-solid fa-door-open",
			label = "Åben bagdøren",
			action = function(entity)
				toggleDoor(entity, 2)
			end,
            canInteract = function(entity)
				return GetEntityBoneIndexByName(entity, 'seat_dside_r') ~= -1
			end
		},
		{
			icon = "fa-solid fa-soap",
			label = "Vask Køretøjet",
			job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				cleanVehicle(entity)
			end
		},
		{
			icon = "fa-solid fa-trash",
			label = "Fjern køretøjet",
			job = {['mecano'] = 0, ['lsc'] = 0, ['police'] = 0},
			action = function(entity)
				deleteVehicle(entity)
			end
		},
		{
            icon = "fa-solid fa-file",
            label = "Fjern solfilm",
            job = {['mecano'] = 0, ['lsc'] = 0, ['police'] = 0},
            action = function(entity)
				removeTint(entity)
			end
        }
	},
    distance = 1.2
})

exports.qtarget:AddTargetBone({'seat_pside_r'},{
	options = {
		{
			icon = "fa-solid fa-door-open",
			label = "Åben bagdøren",
			action = function(entity)
				toggleDoor(entity, 3)
			end,
            canInteract = function(entity)
				return GetEntityBoneIndexByName(entity, 'seat_pside_r') ~= -1
			end
		},
		{
			icon = "fa-solid fa-soap",
			label = "Vask Køretøjet",
			job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				cleanVehicle(entity)
			end
		},
		{
			icon = "fa-solid fa-trash",
			label = "Fjern køretøjet",
			job = {['mecano'] = 0, ['lsc'] = 0, ['police'] = 0},
			action = function(entity)
				deleteVehicle(entity)
			end
		},
		{
            icon = "fa-solid fa-file",
            label = "Fjern solfilm",
            job = {['mecano'] = 0, ['lsc'] = 0, ['police'] = 0},
            action = function(entity)
				removeTint(entity)
			end
        }
	},
    distance = 1.2
})

exports.qtarget:AddTargetBone({'bonnet'},{
	options = {
		{
			icon = "fa-solid fa-door-open",
			label = "Åben kølerhjelmen",
			action = function(entity)
				toggleDoor(entity, 4)
			end
		},
		{
			icon = "fa-solid fa-soap",
			label = "Vask Køretøjet",
			job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				cleanVehicle(entity)
			end
		},
		{
			icon = "fa-solid fa-screwdriver-wrench",
			label = "Reparer Motor",
			job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				fixVehicle(entity, 4)
			end,
			canInteract = function(entity)
				local vehicleClass = GetVehicleClass(entity)
				if vehicleClass == 14 or vehicleClass == 15 then
					return true
				end

				return insideRepairZone
			end
		},
		{
			icon = "fa-solid fa-screwdriver-wrench",
			label = "Nød Reparer Motor",
			job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				fixVehicle(entity, 5)
			end,
			canInteract = function(entity)
				local vehicleClass = GetVehicleClass(entity)
				if vehicleClass == 14 or vehicleClass == 15 then
					return false
				end
				if not insideRepairZone then
					return true
				end

				return false
			end
		},
		{
			icon = "fa-solid fa-trash",
			label = "Fjern køretøjet",
			job = {['mecano'] = 0, ['lsc'] = 0, ['police'] = 0},
			action = function(entity)
				deleteVehicle(entity)
			end
		},
	},
    distance = 1.2
})

exports.qtarget:AddTargetBone({'boot'},{
	options = {
		{
			icon = "fa-solid fa-door-open",
			label = "Åben bagklappen",
			action = function(entity)
				toggleDoor(entity, 5)
			end,
			canInteract = function(vehicle)
                local isLocked = Entity(vehicle).state.isLocked
                return not isLocked and GetVehicleDoorAngleRatio(vehicle, 5) < 0.9
			end
		},
		{
			icon = "fa-solid fa-door-closed",
			label = "Luk bagklappen",
			action = function(entity)
				toggleDoor(entity, 5)
			end,
			canInteract = function(vehicle)
                local isLocked = Entity(vehicle).state.isLocked
                return not isLocked and GetVehicleDoorAngleRatio(vehicle, 5) >= 0.9
			end
		},
		{
			icon = "fa-solid fa-screwdriver-wrench",
			label = "Reparer Motor",
			job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				fixVehicle(entity, 5)
			end,
			canInteract = function(entity)
				local vehicleClass = GetVehicleClass(entity)
				if vehicleClass == 14 or vehicleClass == 15 then
					return true
				end

				return insideRepairZone
			end
		},
		{
			icon = "fa-solid fa-screwdriver-wrench",
			label = "Nød Reparer Motor",
			job = {['mecano'] = 0, ['lsc'] = 0},
			action = function(entity)
				fixVehicle(entity, 5)
			end,
			canInteract = function(entity)
				local vehicleClass = GetVehicleClass(entity)
				if vehicleClass == 14 or vehicleClass == 15 then
					return false
				end
				if not insideRepairZone then
					return true
				end

				return false
			end
		},
		{
			icon = "fa-solid fa-trash",
			label = "Fjern køretøjet",
			job = {['mecano'] = 0, ['lsc'] = 0, ['police'] = 0},
			action = function(entity)
				deleteVehicle(entity)
			end
		},
	},
    distance = 1.2
})

exports.qtarget:AddTargetModel(Config.Entities, {
    options = {
        {
            icon = "fa-solid fa-trash",
            label = "Fjern objekt",
            job = {['mecano'] = 0, ['lsc'] = 0},
            action = function(entity)
				deleteObject(entity)
			end
        }
    },
    distance = 2
})

ESX = exports["es_extended"]:getSharedObject()

exports.qtarget:Player({
	options = {
		{
			icon = "fa-solid fa-clipboard-list",
			label = "Giv faktura",
			job = {['lsc'] = 0, ['mecano'] = 0},
			action = function(entity)
				BillingSelectPlayer(NetworkGetPlayerIndexFromPed(entity))
			end
		}
	},
	distance = 2
})

BillingSelectPlayer = function(entity)
    ESX.UI.Menu.Open("dialog", GetCurrentResourceName(), "fine_amount",  {
        title = 'Bøde Størrelse'
    }, function(data, menu)
        local amount = tonumber(data.value)
            
        if amount == nil then
            exports['mythic_notify']:DoHudText('error', 'Ugyldigt antal.')
            return
        end

        if amount ~= nil then
            exports['mythic_notify']:DoHudText('success', "Regningen blev givet til: " .. GetPlayerServerId(entity))
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'lsc' then
				TriggerServerEvent("esx_billing:sendBill", GetPlayerServerId(entity), "society_lsc", "LSC Mekaniker Regning: " .. ESX.Math.GroupDigits(data.value) .. " DKK", tonumber(data.value))
			elseif ESX.PlayerData.job and ESX.PlayerData.job.name == 'mecano' then
				TriggerServerEvent("esx_billing:sendBill", GetPlayerServerId(entity), "society_mecano", "AutoExotic Mekaniker Regning: " .. ESX.Math.GroupDigits(data.value) .. " DKK", tonumber(data.value))
            end
        
            menu.close()
        end
    end, function(data, menu)
        menu.close()
    end)
end