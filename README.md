### Introduction! 👋
A singular **Local** file useful for measuring `Memory Spikes`, often caused with exploit injection.

---
### Memory Spike 📈
Detects when **over** 200 MB of RAM suddenly is being used.

**Actions On Flag**
* **Webhook Warning**
  * Includes Player information, including Name, User ID
  * Includes Game information, including Job ID, Game ID, Server UpTime
  * Includes Identifiable information, including Hardware ID

* **Instant Callbacks**
  * Allowing you to run any code on flag.

```lua
-- Callback Example

local Settings = {
  Callback = {
    Enabled = true,
    Callback = function()
      game.GetService(game, "Players").LocalPlayer:Kick("Flagged for Cheating.")
    end,
  },

  -- . . .
}
```

---
### Purpose ❤️
Just to learn more for Anti Cheats and how they function.
