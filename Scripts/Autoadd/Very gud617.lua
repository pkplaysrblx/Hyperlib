repeat task.wait() until game.GameId ~= 0
if Parvus and Parvus.Loaded then
    Parvus.Utilities.UI:Notification({
        Title = "Parvus Hub",
        Description = "Script already executed!",
        Duration = 5
    }) return
end
 
local PlayerService = game:GetService("Players")
repeat task.wait() until PlayerService.LocalPlayer
local LocalPlayer = PlayerService.LocalPlayer
local LoadArgs = {...}
 
local function GetSupportedGame() local Game
    for Id,Info in pairs(Parvus.Games) do
        if tostring(game.GameId) == Id then
            Game = Info break
        end
    end if not Game then
        Game = Parvus.Games.Universal
    end return Game
end
 
local function GetScript(Script)
    return Parvus.Debug and readfile("Parvus/" .. Script .. ".lua")
    or game:HttpGetAsync("https://raw.githubusercontent.com/AlexR32/Parvus/main/" .. Script .. ".lua")
end
 
local function Concat(Table,Separator)
    local String = ""
    for Index,Value in pairs(Table) do
        String = Index == #Table and String .. tostring(Value)
        or String .. tostring(Value) .. Separator
    end
    return String
end
 
local function LoadScript(Script)
    return loadstring(Parvus.Debug and readfile("Parvus/" .. Script .. ".lua")
    or game:HttpGetAsync("https://raw.githubusercontent.com/AlexR32/Parvus/main/" .. Script .. ".lua"))()
end
 
getgenv().Parvus = {
    Debug = LoadArgs[1],
    Loaded = false,
    Utilities = {},
    Games = {
        ["Universal"] = {
            Name = "Universal",
            Script = "Universal"
        },
        ["1054526971"] = {
            Name = "Blackhawk Rescue Mission 5",
            Script = "Games/BRM5"
        },
        ["580765040"] = {
            Name = "RAGDOLL UNIVERSE",
            Script = "Games/RU"
        },
        ["1168263273"] = {
            Name = "Bad Business",
            Script = "Games/BB"
        },
        ["807930589"] = {
            Name = "The Wild West",
            Script = "Games/TWW"
        },
        ["187796008"] = {
            Name = "Those Who Remain",
            Script = "Games/TWR"
        },
        ["1586272220"] = {
            Name = "Steel Titans",
            Script = "Games/ST"
        },
        ["358276974"] = {
            Name = "Apocalypse Rising 2",
            Script = "Games/AR2"
        }
    }
}
 
Parvus.Utilities.Misc = LoadScript("Utilities/Misc")
Parvus.Utilities.UI = LoadScript("Utilities/UI")
Parvus.Utilities.Drawing = LoadScript("Utilities/Drawing")
 
LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started then
        local QueueOnTeleport = (syn and syn.queue_on_teleport) or queue_on_teleport
        QueueOnTeleport(([[local LoadArgs = {%s}
        local function LoadScript(Script)
            return loadstring(LoadArgs[1] and readfile("Parvus/" .. Script .. ".lua")
            or game:HttpGetAsync("https://raw.githubusercontent.com/AlexR32/Parvus/main/" .. Script .. ".lua"))(unpack(LoadArgs))
        end LoadScript("Loader")]]):format(Concat(LoadArgs,",")))
    end
end)
 
local SupportedGame = GetSupportedGame()
if SupportedGame then
    Parvus.Game = SupportedGame.Name
    LoadScript(SupportedGame.Script)
    Parvus.Utilities.UI:Notification({
        Title = "Parvus Hub",
        Description = Parvus.Game .. " loaded!",
        Duration = LoadArgs[2]
    }) Parvus.Loaded = true
end