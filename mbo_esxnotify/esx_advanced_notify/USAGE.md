3. Test with:

- In-game client: `/testnotify`
- Server console: `/notifyall Hello players!`

## 🧪 Usage

### 🔹 Client-Side Trigger
```lua
TriggerEvent('esx_advanced_notify:send', {
 type = "success",
 title = "Hello",
 message = "Welcome to the server!",
 timeout = 4000
})