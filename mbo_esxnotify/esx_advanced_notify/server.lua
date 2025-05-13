-- Example server-side broadcast
RegisterCommand("notifyall", function(source, args)
    local msg = table.concat(args, " ")
    TriggerClientEvent('esx_custom_notify:show', -1, {
        type = "warning",
        title = "Broadcast",
        message = msg,
        timeout = 5000
    })
end)

