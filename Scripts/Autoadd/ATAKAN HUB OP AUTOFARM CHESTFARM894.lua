getgenv().Config = {
    ["StartFarmChest"] = true,
    ["Team"] = "Marines",
    ["TimeReset"] = 5, -- No Edit
    ["White Screen"] = false,
    ["Stop The God's Chalice"] = true,
    ["Stop The Fist of Darkness"] = true,
    ["HopServer"] = {
        ["Enable"] = true,
        ["BypassServer"] = true,
        ["Region"] = "Singapore"
    },
    ["Server Discord"] = "https://discord.gg/mFzWdBUn45"
}
repeat wait() until game:IsLoaded()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Minhtriettt/Free-Script/main/Chest-Farm.lua"))()
-- fps optimisation script, as it lags some executors P.S thanks to tripe for finding this for me
loadstring(game:HttpGet("https://raw.githubusercontent.com/888supah/FPS/main/FPSoptimisation"))()
