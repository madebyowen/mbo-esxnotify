-- Example usage from server-side
RegisterCommand("notifyall", function(source, args, rawCommand)
    local msg = table.concat(args, " ")
    TriggerClientEvent('esx_advanced_notify:send', -1, {
        type = "warning",
        title = "Server Alert",
        message = msg,
        timeout = 6000
    })
end)
