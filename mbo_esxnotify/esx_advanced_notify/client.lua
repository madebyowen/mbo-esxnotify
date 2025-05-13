RegisterNetEvent('esx_custom_notify:show')
AddEventHandler('esx_custom_notify:show', function(data)
    SendNUIMessage({
        action = 'notify',
        type = data.type or 'info',
        title = data.title or 'Notification',
        message = data.message or '',
        timeout = data.timeout or 5000
    })
end)

-- Exported function for ESX-style use
exports('ShowNotification', function(msg)
    TriggerEvent('esx_custom_notify:show', {
        type = 'info',
        title = 'Notification',
        message = msg,
        timeout = 5000
    })
end)

-- Replace esx:showNotification for compatibility
RegisterNetEvent('esx:showNotification')
AddEventHandler('esx:showNotification', function(msg)
    exports['esx_custom_notify']:ShowNotification(msg)
end)

-- Test command
RegisterCommand("testnotify", function()
    TriggerEvent('esx_custom_notify:show', {
        type = "success",
        title = "MBO Test",
        message = "This is a test notification",
        timeout = 5000
    })
end, false)

