3. Test with:

- In-game client: `/testnotify`
- Server console: `/notifyall Hello players!`

## 🧪 Usage

### 🔹 Client-Side Trigger
```lua
TriggerClientEvent('esx_custom_notify:show', playerId, {
    type = "error",
    title = "Oops!",
    message = "You can't do that!",
    timeout = 4000
})
