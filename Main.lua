local Stats = game.GetService(game, "Stats")

local Settings = {
  Callback = {
    Enabled = true,
    Callback = function()
      game.GetService(game, "Players").LocalPlayer:Kick("Flagged for Cheating.")
    end,
  },

  Limit = 300 -- How much memory is ALLOWED to be added. Ex: 300 = 300 MegaBytes before being flagged.
}

local Memory = Stats:GetTotalMemoryUsageMb()

while task.wait() do
  if Stats:GetTotalMemoryUsageMb() > Memory + Settings.Limit then
    if Settings.Callback.Enabled then
      task.spawn(function()
        Settings.Callback.Callback()
      end)
    end
  end
end
