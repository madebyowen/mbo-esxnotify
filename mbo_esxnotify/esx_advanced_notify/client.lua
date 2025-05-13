RegisterNetEvent('esx_advanced_notify:send')
AddEventHandler('esx_advanced_notify:send', function(data)
    SendNUIMessage({
        action = "notify",
        type = data.type or "info",
        title = data.title or "Notification",
        message = data.message or "",
        timeout = data.timeout or 5000
    })
end)

-- Example usage command (for testing)
RegisterCommand("testnotify", function()
    TriggerEvent('esx_advanced_notify:send', {
        type = "success",
        title = "Test Notification",
        message = "This is a test notification",
        timeout = 5000
    })
end, false)

-- NUI focus management
RegisterNUICallback("notification_done", function(data, cb)
    cb("ok")
end)
