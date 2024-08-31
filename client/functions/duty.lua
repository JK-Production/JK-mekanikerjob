local dutyCooldown = false

toggleDuty = function()
    if not dutyCooldown then
        dutyCooldown = true
        
        TriggerServerEvent('jk_mechanic:dutyToggle')
        
        SetTimeout(120000, function()
            clearCooldown()
        end)
    else
        TriggerEvent('esx:showNotification', "Du kan kun skifte mellem on/off duty hvert 5 min vent venligst.")
    end
end

clearCooldown = function()
    dutyCooldown = false
end

exports.qtarget:AddBoxZone("lsc", vector3(-347.67, -119.75, 39.02), 0.2, 2.6, {
    name = "lsc",
    heading = 339.0,
    debugPoly = false,
    minZ = 39.02,
    maxZ = 40.82
}, {
    options = {
        {
            icon = "fas fa-sign-out-alt",
            label = "Gå af job",
            job = "lsc",
            action = function(entity)
                toggleDuty()
            end
        },
        {
            icon = "fa-solid fa-clipboard-list",
            label = "På værkstedet",
            job = "lsc",
            action = function(entity)
                SetInsideZone()
            end
        },
        {
            icon = "fas fa-sign-in-alt",
            label = "Gå på job",
            job = "lscoff",
            action = function(entity)
                toggleDuty()
            end
        },
    },
    distance = 2.0
})

exports.qtarget:AddBoxZone("lscoff-sandy", vector3(1178.64, 2645.3, 37.75), 0.3, 1.0, {
    name = "lscoff-sandy",
    heading = 0.0,
    debugPoly = false,
    minZ = 37.35,
    maxZ = 39.15
}, {
    options = {
        {
            icon = "fas fa-sign-out-alt",
            label = "Gå af job",
            job = "lsc",
            action = function(entity)
                toggleDuty()
            end
        },
        {
            icon = "fa-solid fa-clipboard-list",
            label = "På værkstedet",
            job = "lsc",
            action = function(entity)
                SetInsideZone()
            end
        },
        {
            icon = "fas fa-sign-in-alt",
            label = "Gå på job",
            job = "lscoff",
            action = function(entity)
                toggleDuty()
            end
        },
    },
    distance = 2.0
})

exports.qtarget:AddBoxZone("lscoff-paleto", vector3(111.51, 6620.42, 31.79), 1.0, 0.3, {
    name = "lscoff-paleto",
    heading = 315.0,
    debugPoly = false,
    minZ = 31.89,
    maxZ = 33.29
}, {
    options = {
        {
            icon = "fas fa-sign-out-alt",
            label = "Gå af job",
            job = "lsc",
            action = function(entity)
                toggleDuty()
            end
        },
        {
            icon = "fa-solid fa-clipboard-list",
            label = "På værkstedet",
            job = "lsc",
            action = function(entity)
                SetInsideZone()
            end
        },
        {
            icon = "fas fa-sign-in-alt",
            label = "Gå på job",
            job = "lscoff",
            action = function(entity)
                toggleDuty()
            end
        },
    },
    distance = 2.0
})

exports.qtarget:AddBoxZone("lscoff-air", vector3(-1135.88, -2005.1, 13.19), 2.6, 0.2, {
    name = "lscoff-air",
    heading = 315.0,
    debugPoly = false,
    minZ = 13.19,
    maxZ = 14.99
}, {
    options = {
        {
            icon = "fas fa-sign-out-alt",
            label = "Gå af job",
            job = "lsc",
            action = function(entity)
                toggleDuty()
            end
        },
        {
            icon = "fa-solid fa-clipboard-list",
            label = "På værkstedet",
            job = "lsc",
            action = function(entity)
                SetInsideZone()
            end
        },
        {
            icon = "fas fa-sign-in-alt",
            label = "Gå på job",
            job = "lscoff",
            action = function(entity)
                toggleDuty()
            end
        },
    },
    distance = 2.0
})

exports.qtarget:AddBoxZone("lscoff-mesa", vector3(738.92, -1078.1, 22.17), 1.6, 0.2, {
    name = "lscoff-mesa",
    heading = 0.0,
    debugPoly = false,
    minZ = 22.42,
    maxZ = 23.62
}, {
    options = {
        {
            icon = "fas fa-sign-out-alt",
            label = "Gå af job",
            job = "lsc",
            action = function(entity)
                toggleDuty()
            end
        },
        {
            icon = "fa-solid fa-clipboard-list",
            label = "På værkstedet",
            job = "lsc",
            action = function(entity)
                SetInsideZone()
            end
        },
        {
            icon = "fas fa-sign-in-alt",
            label = "Gå på job",
            job = "lscoff",
            action = function(entity)
                toggleDuty()
            end
        },
    },
    distance = 2.0
})
