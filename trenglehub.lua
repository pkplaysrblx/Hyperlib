_G.gamecount = 0
_G.scriptcount = 0
lastupdate = "GMT +1: 06.03.2023 15:09:26"
--^^^dont touch ^^^
function addscript(Place,Gamename,title,author,scriptlink)
    _G.gamecount = _G.gamecount + 1
    _G.scriptcount = _G.scriptcount + 1
    if game.PlaceId == Place then
        Window = _G.Window
        _G.main = Window:NewTab(Gamename)
        main = _G.main
        _G.script = main:NewSection("---Scripts---")
        _G.script:NewButton(title, author, function()
            loadstring(game:HttpGet(scriptlink))()
        end)
    end
end

function addscriptexist(Place,title,author,scriptlink)
    _G.scriptcount = _G.scriptcount + 1
    if game.PlaceId == Place then
        _G.script:NewButton(title, author, function()
            loadstring(game:HttpGet(scriptlink))()
            end)
    end
        
end
function addscriptuniversal(title,author,scriptlink)
    _G.scriptcount = _G.scriptcount + 1
    _G.generalscriptssection:NewButton(title, author, function()
        loadstring(game:HttpGet(scriptlink))()
        end)
end
function addhub(title,author,scriptlink)
    _G.scriptcount = _G.scriptcount + 1
    _G.gamehubsection:NewButton(title, author, function()
        loadstring(game:HttpGet(scriptlink))()
        end)
end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Library/kavo-ui.lua"))()
_G.Window = Library.CreateLib("Hyperlib", "BloodTheme")
Window = _G.Window
Statstab = Window:NewTab("Status")
local StatusSection = Statstab:NewSection("---Last Update---")
StatusSection:NewLabel(lastupdate)
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)
PlayerSection:NewSlider("Gravity", "Changes the gravity", 250, 0, function(v)
    game.Workspace.Gravity = v
end)






generalscripts = Window:NewTab("General")
_G.generalscripts = generalscripts
generalscriptssection = generalscripts:NewSection("---General/Universal Scripts---")
_G.generalscriptssection = generalscriptssection
generalscriptssection:NewButton("Infinite Yield", "Made by EdgeIY and more", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

local gamehubs = Window:NewTab("Game Hubs")
local gamehubsection = gamehubs:NewSection("---Game Hubs---")
_G.gamehubsection = gamehubsection
gamehubsection:NewButton("Owl Hub", "Made by Google Chrome and CriShoux", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
end)

gamehubsection:NewButton("Zephyr X", "Made by ZEPHYR", function()
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ECLIPSEXHUB/ECLIPSE-X/main/ECLIPSE%20X.txt", true))()
        end)
end)

gamehubsection:NewButton("V.G-Hub", "Made by 1201for", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub"))()
end)

gamehubsection:NewButton("Nex Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CopyReal/NexHub/main/NexHubLoader"))()
end)

gamehubsection:NewButton("Uzu Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/uzu01/lua/main/loader.lua"))()
end)
local Keybinds = Window:NewTab("Keybinds")
local KeybindsSection = Keybinds:NewSection("---Keybinds---")
KeybindsSection:NewKeybind("Toggle UI", "Press T To toggle the Hyperlib UI (Click to change Keybind)", Enum.KeyCode.T, function()
	Library:ToggleUI()
end)
local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("---Credits---")
local CreditsSection2 = Credits:NewSection("Made by Fantemil#2549")
local CreditsSection3 = Credits:NewSection("Powered by a python selenium bot")



function bigRedText(text)
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
        Text = text,
        Color = Color3.new(1, 0, 0),
        Font = Enum.Font.GothamBold,
        FontSize = Enum.FontSize.Size48,
    })
end


-- Create the clearChat() function
function clearChat()
    local clearMessage = ""
    for i = 1, 20 do
        clearMessage = clearMessage .. " "
    end
    
    for i = 1, 30 do
        game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
            Text = clearMessage,
            Color = Color3.new(1, 1, 1), -- set the color to white to make the messages invisible
            Font = Enum.Font.SourceSans,
            FontSize = Enum.FontSize.Size18,
        })
    end
end

function bigBlueItalicText(text)
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
        Text = text,
        Color = Color3.fromRGB(0, 162, 255), -- set the color to blue
        Font = Enum.Font.SourceSansItalic,
        TextTransparency = 0,
        TextStrokeTransparency = 0,
        TextScaled = false,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        FontSize = Enum.FontSize.Size48,
    })
end

function getLocalPlayerName()
    local player = game:GetService("Players").LocalPlayer
    return player.Name
end
function characterCount(str)
    return #str
end
function addDashes(num)
    local result = ""
    for i = 1, num do
        result = result .. "-"
    end
    return result
end
function bigGreenItalicText(text)
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
        Text = text,
        Color = Color3.fromRGB(0, 255, 0), -- set the color to blue
        Font = Enum.Font.SourceSansItalic,
        TextTransparency = 0,
        TextStrokeTransparency = 0,
        TextScaled = false,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        FontSize = Enum.FontSize.Size48,
    })
end
function rprint(text, color)
    rconsoleprint("\n".. text, color)
end

local usercustom = "Welcome to Hyperlib," .. " " .. getLocalPlayerName() .. "!"
local customlen = characterCount(usercustom)
clearChat()
bigRedText(usercustom)
bigRedText(addDashes(customlen))
bigBlueItalicText("Script developed by Fantemil")
bigRedText(addDashes(customlen))
bigBlueItalicText("Check out the Project on Github:")
bigGreenItalicText("https://github.com/Fantemil/Hyperlib")
bigRedText(addDashes(customlen))


--Work at a Pizza Place

if game.PlaceId == 192800 then 
    local main = Window:NewTab("Work at a Pizza Place")
    _G.script = main:NewSection("---Scripts---")
    
    _G.script:NewButton("FE Gui with Autofarm", "Made by ameicaa, distributed through TurkOyuncu99", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Work%20at%20a%20Pizza%20Place/TurkOyuncu99.lua"))()
    end)

    _G.script:NewButton("Normal Autofarm", "Made by unknown", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Work%20at%20a%20Pizza%20Place/Work%20at%20a%20Pizza%20Place%20Autofarm.lua"))()     
    end)
end

-- Da Hood

if game.PlaceId == 2788229376 then
    local main = Window:NewTab("Da Hood")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("TrustBoy GUI", "Made by GS21", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Da%20Hood/TrustBoy.lua"))()
        end)

    _G.script:NewButton("Lates GUI", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Da%20Hood/Lates%20GUI.lua"))()
        end)
end

-- Build a Boat

if game.PlaceId == 537413528 then
    local main = Window:NewTab("Build A Boat")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Krypton Alpha", "Distributed by Defaultpfpuser#4282", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Build%20A%20Boat%20For%20Treasure/Krypton.lua"))()
        end)

    _G.script:NewButton("Vynixius BABFT", "Made by Vynixu", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Build%20A%20Boat%20For%20Treasure/Vynixius%20BABFT.lua"))()
        end)
    
        
    _G.script:NewButton("BABFT GUI", "Made by Unknown", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Build%20A%20Boat%20For%20Treasure/(Open%20Source)%20BABFT%20GUI.lua"))()
        end)
end

-- Madcity

if game.PlaceId == 1224212277 then

    local main = Window:NewTab("Madcity")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("TurkOyuncu99 Gui", "Made by TurkOyuncu99", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Mad%20City/(Open%20Source)%20TurkOyuncu99.lua"))()
        end)

    _G.script:NewButton("BLACKGAMER1221 Gui", "Made by BLACKGAMER1221", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Mad%20City/BLACKGAMER1221.lua"))()
        end)

    _G.script:NewButton("Mad-lads V7", "Made by ???", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Mad%20City/Mad-lads%20V7.lua"))()
        end)

    _G.script:NewButton("XP Farm Script", "Made by Unknown", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Mad%20City/Infinite%20XP.lua"))()
        end)
end

--Bloxfruits

if game.PlaceId == 2753915549 then

    local main = Window:NewTab("Blox Fruits")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Astro Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/BloxFruits/Astro%20Hub.lua"))()
        end)

    _G.script:NewButton("Fusion Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/BloxFruits/Fusion%20Hub.lua"))()
        end)
    
    _G.script:NewButton("Maru Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/BloxFruits/Maru%20Hub.lua"))()
        end)

    _G.script:NewButton("Netna Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/BloxFruits/Netna%20Hub.lua"))()
        end)

    _G.script:NewButton("Power X", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/BloxFruits/Power%20X.lua"))()
        end)

    _G.script:NewButton("Smz Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/BloxFruits/Smz%20Hub.lua"))()
        end)

    _G.script:NewButton("Evo X Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/BloxFruits/EVO%20X%20Hub.lua"))()
        end)

    _G.script:NewButton("Ripper Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/BloxFruits/Ripper%20Hub.lua"))()
        end)
end

-- Pet sim X

if game.PlaceId == 6284583030 then

    local main = Window:NewTab("Pet simulator X")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("BK pet", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/BK%20pet.lua"))()
        end)

    _G.script:NewButton("Black Trap", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/Black%20Trap.lua"))()
        end)
    
    _G.script:NewButton("Dino Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/Dino%20Hub.lua"))()
        end)

    _G.script:NewButton("HOHO Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/HOHO%20Hub.lua"))()
        end)

    _G.script:NewButton("Project Meow", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/Project%20Meow%20loader.lua"))()
        end)

    _G.script:NewButton("Saza Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/Saza%20Hub.lua"))()
        end)

    _G.script:NewButton("Shiny Tool", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/Shiny%20Tool.lua"))()
        end)

    _G.script:NewButton("Wisteria GUI", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/Wisteria%20GUI.lua"))()
        end)

    _G.script:NewButton("(KEY) EzPets", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/Ez%20Pet.lua"))()
        end)

    _G.script:NewButton("Floppa Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Pet%20Simulator%20X/Floppa%20Hub.lua"))()
        end)
end

-- Anime Fighters

if game.PlaceId == 6299805723 then
    local main = Window:NewTab("Anime Fighters")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("KJHub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Anime%20Fighters/KJHub.lua"))()
        end)
end

--Anime Punching Simulator

if game.PlaceId == 8357510970 then
    local main = Window:NewTab("Anime Punching Simulator")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("insanedude59", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Anime%20Punching%20Simulator/(Open%20Source)%20insanedude59.lua"))()
        end)

    _G.script:NewButton("Uzu Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Anime%20Punching%20Simulator/Uzu%20Hub.lua"))()
        end)
end

--Bedwars

if game.PlaceId == 6872265039 then
    local main = Window:NewTab("Bedwars")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Vape V4", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Bedwars/(Open%20Source)%20Vape%20V4.lua"))()
        end)
end

--Bee Swarm Simulator

if game.PlaceId == 1537690962 then
    local main = Window:NewTab("Bee Swarm Simulator")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Get all Promocodes", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Bee%20Swarm%20Simulator/Get%20all%20Codes.lua"))()
        end)
end

--Big Paintball

if game.PlaceId == 3527629287 then
    local main = Window:NewTab("Big Paintball")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Kill all", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Big%20Paintball/(Open%20Source)%20Kill%20all.lua"))()
        end)
end

--Brookhaven

if game.PlaceId == 4924922222 then
    local main = Window:NewTab("Brookhaven")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("NocturneMoDz GUI", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Brookhaven/NocturneMoDz%20GUI.lua"))()
        end)
end

--DBZ Final-stand

if game.PlaceId == 536102540 then
    local main = Window:NewTab("DBZ Final-stand")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Auto Farm GUI", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/DBZ%20Final-stand/Autofarm%20gui.lua"))()
        end)
end

--Demonfall

if game.PlaceId == 4855457388 then
    local main = Window:NewTab("Demonfall")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Furiousfall", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Demonfall/Furiousfall.lua"))()
        end)
end

--Dungeon Quest

if game.PlaceId == 2414851778 then
    local main = Window:NewTab("Dungeon Quest")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("DR 2.0", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Dungeon%20Quest/DR%202.0.lua"))()
        end)
end

--Dunking Simulator

if game.PlaceId == 7655745946 then
    local main = Window:NewTab("Dunking Simulator")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Dunking Sim GUI", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Dunking%20Simulator/Dunking%20Simulator%20GUI.lua"))()
        end)
end

--Eternal Nightmare

if game.PlaceId == 4276247088 then
    local main = Window:NewTab("Eternal Nightmare")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("10x00", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Eternal%20Nightmare/(Open%20Source)%2010x00.lua"))()
        end)

    _G.script:NewButton("Eternal Z", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Eternal%20Nightmare/Eternal%20Z.lua"))()
        end)

    _G.script:NewButton("Tobias020108Back", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Eternal%20Nightmare/Tobias020108Back.lua"))()
        end)
end

--funky-friday

if game.PlaceId == 6447798030 then
    local main = Window:NewTab("funky-friday")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("wally-rblx local loader", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/funky-friday/(Open%20Source)%20wally-rblx%20autoplay.lua"))()
        end)

    _G.script:NewButton("wally-rblx github loader (ORIGINAL SOURCE)", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/funky-friday/wally-rblx%20autoplay%20loader.lua"))()
        end)
end

--Hide and seek extreme

if game.PlaceId == 205224386 then
    local main = Window:NewTab("Hide and seek extreme")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Bebo GUI", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Hide%20and%20seek%20extreme/Bebo%20GUI.lua"))()
        end)
end

--Islands

if game.PlaceId == 4872321990 then
    local main = Window:NewTab("Islands")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Void Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Islands/Void%20Hub.lua"))()
        end)
end

--Jailbreak

if game.PlaceId == 606849621 then
    local main = Window:NewTab("Jailbreak")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Evo V2", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Jailbreak/Evo%20V2.lua"))()
        end)
end

--Last Pirates

if game.PlaceId == 6329844902 then
    local main = Window:NewTab("Last Pirates")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("x2SPETER", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Last%20Pirates/x2SPETER.lua"))()
        end)
end

--Prison Life

if game.PlaceId == 155615604 then
    local main = Window:NewTab("Prison Life")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("SenpaiIsBest", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Prison%20Life/SenpaiIsBest.lua"))()
        end)
end

--Reaper 2

if game.PlaceId == 7056922815 then
    local main = Window:NewTab("Reaper 2")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("XTheMasterX", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Reaper%202/XTheMasterX.lua"))()
        end)
end

--Sword Factory

if game.PlaceId == 8917641854 then
    local main = Window:NewTab("Sword Factory")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Autoclicker", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Sword%20Factory/Autoclicker.lua"))()
        end)
end

--The Wild West

if game.PlaceId == 2317712696 then
    local main = Window:NewTab("The Wild West")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("V.G Hub", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/The%20Wild%20West/V.G%20Hub.lua"))()
        end)
end

--Twopiece

if game.PlaceId == 5303541547 then
    local main = Window:NewTab("Twopiece")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Joshy#1060", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/twopiece/(Open%20Source)%20Joshy%231060.lua"))()
        end)
end

--Your Bizzare Adventure

if game.PlaceId == 2809202155 then
    local main = Window:NewTab("Your Bizzare Adventure")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("YBAHopper", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Your%20Bizzare%20Adventure/YBAHopper.lua"))()
        end)
end

--Meep City

if game.PlaceId == 370731277 then
    local main = Window:NewTab("Meep City")
    _G.script = main:NewSection("---Scripts---")

    _G.script:NewButton("Synolope", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Meep%20City/Synolope%20GUI/Loader.lua"))()
        end)
end


if game.PlaceId  == 7047488135 then
    local exclusivemain = Window:NewTab("Exclusive")
    exscript = exclusivemain:NewSection("Autofarms")
    exscript:NewButton("Auto Collect Orbs", "Auto Collects all Orbs; get speed SUPER FAST", function()
        
        local playerHead = game.Players.LocalPlayer.Character.Head
        while true do
            for i, v in pairs(game:GetService("Workspace").OrbSpawns:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent  then
                    firetouchinterest(playerHead, v.Parent, 0)
                    wait(0.01)
                    firetouchinterest(playerHead, v.Parent, 1)
                end
                
                
            end
        end  
    end)
    exscript:NewButton("Auto Collect Rings", "Auto Collects all Rings; Can also get you speed",function()
        local playerHead = game.Players.LocalPlayer.Character.Head
        while true do
            for i, v in pairs(game:GetService("Workspace").OrbSpawns:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent  then
                    firetouchinterest(playerHead, v.Parent, 0)
                    wait(0.01)
                    firetouchinterest(playerHead, v.Parent, 1)
                end
                
                
            end
        end  
    end)
    exscript:NewButton("Auto Clicker", "Just a simple auto clicker", function()
        while true do
            game:GetService("ReplicatedStorage").Remotes.AddSpeed:FireServer()
            wait(0.01)
        end
    end)
    rebirthex = exclusivemain:NewSection("Rebirth")
    rebirthex:NewButton("Auto Rebirth", "Automatically rebirths you", function(state)
        while true do
            
            game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
            wait(0.1)
            
        end
    end)
end


addscript(286090429,"Scripts for Current Game", "Lux - Arsenal AutoWin and More!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Lux%20%20Arsenal%20AutoWin%20and%20More.lua")
addscriptexist(6284583030, "Pet Simulator X Created By BloodBath#9170", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pet%20Simulator%20X%20Created%20By%20BloodBath.lua")
addscript(12192552089,"Scripts for Current Game", "[RELEASE] Fruit Warriors", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RELEASE%20Fruit%20Warriors.lua")
addscript(9992339729,"Scripts for Current Game", "AUTO ANSWER FOR LONGEST / CLOSEST ANSWER WINS", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AUTO%20ANSWER%20FOR%20LONGEST%20%20CLOSEST%20ANSWER%20WINS.lua")
addscriptuniversal("Kya-Ware | Making games better to play!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/KyaWare%20%20Making%20games%20better%20to%20play.lua")
addscriptuniversal("17F7Os Anti Http Spy", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FOs%20Anti%20Http%20Spy.lua")
addscriptuniversal("Team Skeet UI Library - for script devs", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Team%20Skeet%20UI%20Library%20%20for%20script%20devs.lua")
addscript(12480945489,"Scripts for Current Game", "Ice Cream Clicker Script Auto Lick, Auto Sell, ETC", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ice%20Cream%20Clicker%20Script%20Auto%20Lick%20Auto%20Sell%20ETC.lua")
addscriptuniversal("Faster Tween Script [NEW]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Faster%20Tween%20Script%20NEW.lua")
addscript(12336036424,"Scripts for Current Game", "Slasher Blade: Kill Aura", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Slasher%20Blade%20Kill%20Aura.lua")
addscriptexist(6284583030, "RoFast, Pet Simulator X", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RoFast%20Pet%20Simulator%20X.lua")
addscriptuniversal("[NEW] Teleport / Tween GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NEW%20Teleport%20%20Tween%20GUI.lua")
addscriptexist(2788229376, "DaHood - DaUberHub [NEW]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DaHood%20%20DaUberHub%20NEW.lua")
addscriptuniversal("17F7Os RConsole Admin Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FOs%20RConsole%20Admin%20Script.lua")
addscriptuniversal("Block Name Finder Script ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Block%20Name%20Finder%20Script%20.lua")
addscriptexist(12480945489, "shiny.wtf | ICE CREAM CLICKER", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/shinywtf%20%20ICE%20CREAM%20CLICKER.lua")
addscript(10565582849,"Scripts for Current Game", "Button Simulator 2023", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Button%20Simulator%20.lua")
addscriptuniversal("Car Dealership Tycoon Auto Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Car%20Dealership%20Tycoon%20Auto%20Farm.lua")
addscript(815405518,"Scripts for Current Game", "The Floor is Lava AutoWins/Points", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20Floor%20is%20Lava%20AutoWinsPoints.lua")
addscript(3272915504,"Scripts for Current Game", "Kidachi | Auto Fish n More", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kidachi%20%20Auto%20Fish%20n%20More.lua")
addscript(9498006165,"Scripts for Current Game", "[ kHub ] Tapping Simulator Script [Working - 2023] | Auto Click!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20kHub%20%20Tapping%20Simulator%20Script%20Working%20%20%20%20Auto%20Click.lua")
addscript(2866967438,"Scripts for Current Game", "[ kHub ] Fishing Simulator Ultimate Script [Working - 2023] | Auto-Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20kHub%20%20Fishing%20Simulator%20Ultimate%20Script%20Working%20%20%20%20AutoFarm.lua")
addscript(6772424226,"Scripts for Current Game", "2 player millionaires tycoon autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20player%20millionaires%20tycoon%20autofarm.lua")
addscript(11943871352,"Scripts for Current Game", "Homework Printing Simulator Instant finish game [UPDATED]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Homework%20Printing%20Simulator%20Instant%20finish%20game%20UPDATED.lua")
addhub("Pog Hub Script 17+ Game", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pog%20Hub%20Script%20%20Game.lua")
addscript(8568266872,"Scripts for Current Game", "Kill Monsters to Save Princess", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kill%20Monsters%20to%20Save%20Princess.lua")
addscript(11040063484,"Scripts for Current Game", "Sword Fighters Simulator", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sword%20Fighters%20Simulator.lua")
addscript(893973440,"Scripts for Current Game", "Flee The Facility: Bypass Anti Cheat", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Flee%20The%20Facility%20Bypass%20Anti%20Cheat.lua")
addscript(3398014311,"Scripts for Current Game", "Restaurant Tycoon 2 ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Restaurant%20Tycoon%20%20.lua")
addscript(4490140733,"Scripts for Current Game", "My Restaurant: autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/My%20Restaurant%20autofarm.lua")
addscriptexist(205224386, "Hide And Seek Extreme ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Hide%20And%20Seek%20Extreme%20.lua")
addscript(12996397,"Scripts for Current Game", "Mega Fun Obby: AutoFarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Mega%20Fun%20Obby%20AutoFarm.lua")
addscriptexist(286090429, "Arsenal: Silent Aim, More!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arsenal%20Silent%20Aim%20More.lua")
addscript(920587237,"Scripts for Current Game", "Adopt Me: Autofarm Baby Mode", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Adopt%20Me%20Autofarm%20Baby%20Mode.lua")
addscriptexist(2788229376, "Da Hood: Over 20+ Features!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Da%20Hood%20Over%20%20Features.lua")
addscript(142823291,"Scripts for Current Game", "Murder Mystery 2: OP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Murder%20Mystery%20%20OP.lua")
addscript(9872472334,"Scripts for Current Game", "Evade: Awesome autofarm feature!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Evade%20Awesome%20autofarm%20feature.lua")
addscript(189707,"Scripts for Current Game", "Natural Disaster Survival", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Natural%20Disaster%20Survival.lua")
addscript(11690069089,"Scripts for Current Game", "Best Script To Make It Louder : Simulator", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Best%20Script%20To%20Make%20It%20Louder%20%20Simulator.lua")
addscript(6735572261,"Scripts for Current Game", "Selenium Pilgrammed", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Selenium%20Pilgrammed.lua")
addscript(11302865934,"Scripts for Current Game", "Every Second You Get +1 HP v0.6.5", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Every%20Second%20You%20Get%20%20HP%20v.lua")
addscript(5938036553,"Scripts for Current Game", "FRONTLINES Script | mopsHub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FRONTLINES%20Script%20%20mopsHub.lua")
addhub("Toddys hub 3 games supported", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Toddys%20hub%20%20games%20supported.lua")
addscript(6516141723,"Scripts for Current Game", "Doors | ESP, Speed Changer, Auto-Library, Entity ESP, & more!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Doors%20%20ESP%20Speed%20Changer%20AutoLibrary%20Entity%20ESP%20%20more.lua")
addscriptexist(4924922222, "IceHub - Brookhaven Gamepass Unlocker", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IceHub%20%20Brookhaven%20Gamepass%20Unlocker.lua")
addscript(6913960180,"Scripts for Current Game", "Deviously Steal All Souls And Cores", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Deviously%20Steal%20All%20Souls%20And%20Cores.lua")
addscriptexist(6284583030, " Pet Simulator X Script mzlff hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Pet%20Simulator%20X%20Script%20mzlff%20hub.lua")
addscriptuniversal("Car Dealership tycoon", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Car%20Dealership%20tycoon.lua")
addscriptexist(12336036424, "THE BEST SCRIPT / OXYGEN", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/THE%20BEST%20SCRIPT%20%20OXYGEN.lua")
addscriptexist(537413528, "Best BABFT Build a boat for treasure Script 40ish+ features", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Best%20BABFT%20Build%20a%20boat%20for%20treasure%20Script%20ish%20features.lua")
addscriptexist(4924922222, "IceHub - Brookhaven RP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/IceHub%20%20Brookhaven%20RP.lua")
addscript(10945472407,"Scripts for Current Game", "Best Strong Muscle Simulator Script!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Best%20Strong%20Muscle%20Simulator%20Script.lua")
addscriptuniversal("Auto Fishing for Arcane Odyssey", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Auto%20Fishing%20for%20Arcane%20Odyssey.lua")
addscript(8540346411,"Scripts for Current Game", "Op script for Rebirth Champions X", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Op%20script%20for%20Rebirth%20Champions%20X.lua")
addscript(11298754833,"Scripts for Current Game", "diomond ruby steel iron ORE ESP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/diomond%20ruby%20steel%20iron%20ORE%20ESP.lua")
addhub("TRXDENT Universal Script Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/TRXDENT%20Universal%20Script%20Hub.lua")
addscriptexist(3272915504, "Kidachi | Arcane Odyssey", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kidachi%20%20Arcane%20Odyssey.lua")
addscriptexist(370731277, "new meepcity script with fixed stuff", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/new%20meepcity%20script%20with%20fixed%20stuff.lua")
addscript(12083773314,"Scripts for Current Game", "Troopy army simulator Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Troopy%20army%20simulator%20Script.lua")
addscriptuniversal("In Game Executor Synapse X", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/In%20Game%20Executor%20Synapse%20X.lua")
addscriptuniversal("change player display user client sided", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/change%20player%20display%20user%20client%20sided.lua")
addscriptexist(12083773314, "BEST SCRIPT / OXYGEN", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BEST%20SCRIPT%20%20OXYGEN.lua")
addscriptuniversal("Eternals Alt Control", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Eternals%20Alt%20Control.lua")
addscriptexist(189707, "Natural Disaster Survival - Disable fall damage, Walk On Water, Choose Map", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Natural%20Disaster%20Survival%20%20Disable%20fall%20damage%20Walk%20On%20Water%20Choose%20Map.lua")
addscriptexist(3272915504, "Arcane Odyssey Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Arcane%20Odyssey%20Script.lua")
addscript(7288936208,"Scripts for Current Game", "Reach script and anti cheat bypasser+Antiban ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Reach%20script%20and%20anti%20cheat%20bypasserAntiban%20.lua")
addscriptexist(6284583030, "PET SIMULATOR X | OP SCRIPT THE BEST", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/PET%20SIMULATOR%20X%20%20OP%20SCRIPT%20THE%20BEST.lua")
addscript(8726743209,"Scripts for Current Game", "Refinery Caves - Best Script Atm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Refinery%20Caves%20%20Best%20Script%20Atm.lua")
addscriptexist(11040063484, "Sword Fighters Simulator Auto Farm Kill Aura", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sword%20Fighters%20Simulator%20Auto%20Farm%20Kill%20Aura.lua")
addscript(12172698927,"Scripts for Current Game", "Sword Race INF Money, Auto Rebirth,Auto Egg", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sword%20Race%20INF%20Money%20Auto%20RebirthAuto%20Egg.lua")
addscriptexist(12172698927, "inf money / OXYGEN ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/inf%20money%20%20OXYGEN%20.lua")
addscript(11582083063,"Scripts for Current Game", "BEST Auto Farm / OXYGEN", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/BEST%20Auto%20Farm%20%20OXYGEN.lua")
addscript(11430505281,"Scripts for Current Game", "Team Skeet AWS open source", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Team%20Skeet%20AWS%20open%20source.lua")
addscriptexist(142823291, "Murder Mystery 2: ESP, Fake Knife, Get Xbox Knife", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Murder%20Mystery%20%20ESP%20Fake%20Knife%20Get%20Xbox%20Knife.lua")
addscriptexist(2753915549, "Kidachi | Bloxfruit ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kidachi%20%20Bloxfruit%20.lua")
addscript(2116002761,"Scripts for Current Game", "Aftons Family Diner", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Aftons%20Family%20Diner.lua")
addscript(5926001758,"Scripts for Current Game", "Color Block: Inf Jump, Instant Freeze, SpeedHack", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Color%20Block%20Inf%20Jump%20Instant%20Freeze%20SpeedHack.lua")
addscriptexist(2753915549, "VOID HUB | NEW GUI!!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/VOID%20HUB%20%20NEW%20GUI.lua")
addscript(6678877691,"Scripts for Current Game", "ZO SAMURAI - Killaura", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZO%20SAMURAI%20%20Killaura.lua")
addscript(3101667897,"Scripts for Current Game", "Legends of Speed Autofarm ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Legends%20of%20Speed%20Autofarm%20.lua")
addscript(10313751253,"Scripts for Current Game", "Free Bike Spawn Gamepass", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Free%20Bike%20Spawn%20Gamepass.lua")
addscriptexist(5938036553, "FRONTLINES | ESP Boxes, Tracers, Rainbow", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FRONTLINES%20%20ESP%20Boxes%20Tracers%20Rainbow.lua")
addscriptexist(5938036553, "FRONTLINES | Hitbox Extender", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FRONTLINES%20%20Hitbox%20Extender.lua")
addscriptexist(5938036553, "FRONTLINES | Speed Hack", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FRONTLINES%20%20Speed%20Hack.lua")
addscriptexist(6516141723, "OP Doors Entity Spawner", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Doors%20Entity%20Spawner.lua")
addscript(10427804764,"Scripts for Current Game", "Soulmate Colour GUI | Set your color to anything", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Soulmate%20Colour%20GUI%20%20Set%20your%20color%20to%20anything.lua")
addhub("Kidde Hub Universal Hub V1.0.3", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Kidde%20Hub%20Universal%20Hub%20V.lua")
addscriptexist(6516141723, "Roblox Doors Auto die record", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Roblox%20Doors%20Auto%20die%20record.lua")
addscript(7848359510,"Scripts for Current Game", "Free gamepasses / dumb game", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Free%20gamepasses%20%20dumb%20game.lua")
addscript(4616652839,"Scripts for Current Game", "NEW Shindo Life Teleport Locations Script  NOW FOR ALL MAIN VILLAGES  ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NEW%20Shindo%20Life%20Teleport%20Locations%20Script%20%20NOW%20FOR%20ALL%20MAIN%20VILLAGES%20%20.lua")
addscriptuniversal("Pets Simulator X Visual Pets", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pets%20Simulator%20X%20Visual%20Pets.lua")
addscript(9874911474,"Scripts for Current Game", "Tha Bronx OP Script!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tha%20Bronx%20OP%20Script.lua")
addscriptexist(286090429, "AdvanceTech | Arsenal | V3", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AdvanceTech%20%20Arsenal%20%20V.lua")
addscriptexist(9872472334, "DevHub [Evade Added] +5 Games", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DevHub%20Evade%20Added%20%20Games.lua")
addscript(590744701,"Scripts for Current Game", "RBLXWare | Anti-Ban ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RBLXWare%20%20AntiBan%20.lua")
addscript(10455492548,"Scripts for Current Game", "Pobeg ot a4 adopt mi parkur ben - Teleport to end/start, inf jumps", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Pobeg%20ot%20a%20adopt%20mi%20parkur%20ben%20%20Teleport%20to%20endstart%20inf%20jumps.lua")
addscriptuniversal("The Rake || Rake ESP [Open Source]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20Rake%20%20Rake%20ESP%20Open%20Source.lua")
addscriptexist(6516141723, "Doors - ESP for almost everything, Alot More!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Doors%20%20ESP%20for%20almost%20everything%20Alot%20More.lua")
addhub("Xix Script Hub [WORKS IN ANY GAME] [UPDATE]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Xix%20Script%20Hub%20WORKS%20IN%20ANY%20GAME%20UPDATE.lua")
addscriptuniversal("Universal click tp script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20click%20tp%20script.lua")
addscriptexist(2788229376, "[UPDATED] Zinc Hub v3.1", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UPDATED%20Zinc%20Hub%20v.lua")
addscript(11781005288,"Scripts for Current Game", "+1 Jetpack Fuel Per Second Autofarm etc", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Jetpack%20Fuel%20Per%20Second%20Autofarm%20etc.lua")
addscript(10704789056,"Scripts for Current Game", "Drive World AUTOFARM 100% FREE OP!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Drive%20World%20AUTOFARM%20%20FREE%20OP.lua")
addscript(183364845,"Scripts for Current Game", "New Speed Run 4 Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/New%20Speed%20Run%20%20Script.lua")
addhub("CineHub V1.8 - By Dismal", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/CineHub%20V%20%20By%20Dismal.lua")
addscript(1240123653,"Scripts for Current Game", "Zombie Attack: Autofarm OP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Zombie%20Attack%20Autofarm%20OP.lua")
addscriptuniversal("UserAlert - Dodging made easy ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/UserAlert%20%20Dodging%20made%20easy%20.lua")
addscript(30869879,"Scripts for Current Game", "Stop it Slender Page Collector ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Stop%20it%20Slender%20Page%20Collector%20.lua")
addscriptexist(11302865934, "Official JHub For Robloxs Games", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Official%20JHub%20For%20Robloxs%20Games.lua")
addhub("One Protocol Hub: 17 Games supported", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/One%20Protocol%20Hub%20%20Games%20supported.lua")
addscript(11746859781,"Scripts for Current Game", "Bubble Gum Clicker: Auto spin wheel, auto blow bubble, auto claim daily gifts", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Bubble%20Gum%20Clicker%20Auto%20spin%20wheel%20auto%20blow%20bubble%20auto%20claim%20daily%20gifts.lua")
addscriptuniversal("Player Teleport Script || Tween, Teleport Button", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Player%20Teleport%20Script%20%20Tween%20Teleport%20Button.lua")
addscriptuniversal("Universal Aimbot UI Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Universal%20Aimbot%20UI%20Script.lua")
addscriptexist(606849621, "Jailbreak AutoRob/AutoFarm ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Jailbreak%20AutoRobAutoFarm%20.lua")
addscriptexist(537413528, "Build A Boat For Treasure AUTOFARM ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20For%20Treasure%20AUTOFARM%20.lua")
addscriptexist(537413528, "OP SCRIPT FOR BUILD A BOAT FOR TREASURE ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20SCRIPT%20FOR%20BUILD%20A%20BOAT%20FOR%20TREASURE%20.lua")
addscriptexist(2753915549, "Blox Fruit Script Created By Blood Bath", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruit%20Script%20Created%20By%20Blood%20Bath.lua")
addscriptuniversal("RobloxSMM UPDATED ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/RobloxSMM%20UPDATED%20.lua")
addscript(3297964905,"Scripts for Current Game", "Weaponry Kill All Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Weaponry%20Kill%20All%20Script.lua")
addhub("AirHub | UNIVERSAL AIMBOT, WALL HACK ESP & CROSSHAIR GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/AirHub%20%20UNIVERSAL%20AIMBOT%20WALL%20HACK%20ESP%20%20CROSSHAIR%20GUI.lua")
addscriptexist(2788229376, "ZAPPED V3 GUI | BEST FREE DA HOOD SCRIPT", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZAPPED%20V%20GUI%20%20BEST%20FREE%20DA%20HOOD%20SCRIPT.lua")
addscript(9796685905,"Scripts for Current Game", "Super Hero Race Clicker Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Super%20Hero%20Race%20Clicker%20Script.lua")
addscriptexist(537413528, "Build A Boat Auto Farm Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20Auto%20Farm%20Script.lua")
addscript(6741970382,"Scripts for Current Game", "troll script and cool features", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/troll%20script%20and%20cool%20features.lua")
addscript(1069951594,"Scripts for Current Game", "Fall of Hell - AutoWin, GodMode, FOV Changer", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Fall%20of%20Hell%20%20AutoWin%20GodMode%20FOV%20Changer.lua")
addscript(6160139406,"Scripts for Current Game", "The Underground War 3 Flag Steal", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20Underground%20War%20%20Flag%20Steal.lua")
addscriptuniversal("Name Hider | Universal Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Name%20Hider%20%20Universal%20Script.lua")
addscript(5076734934,"Scripts for Current Game", "Rooms Script | Working ✅", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Rooms%20Script%20%20Working%20.lua")
addscriptuniversal("Roblox Friend Botter [RoSMM]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Roblox%20Friend%20Botter%20RoSMM.lua")
addscript(10982284336,"Scripts for Current Game", "Auto Farm Basic / OXYGEN", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Auto%20Farm%20Basic%20%20OXYGEN.lua")
addscript(11334163219,"Scripts for Current Game", "Anime Power Simulator - V3.0", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Anime%20Power%20Simulator%20%20V.lua")
addscript(4759640416,"Scripts for Current Game", "The Underground War 2 Flag TP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/The%20Underground%20War%20%20Flag%20TP.lua")
addscript(5902977746,"Scripts for Current Game", "Ultimate Tower Defense: AutoFish, Teleports & More", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Ultimate%20Tower%20Defense%20AutoFish%20Teleports%20%20More.lua")
addscriptuniversal("Holos Alts Controls", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Holos%20Alts%20Controls.lua")
addscriptexist(2788229376, "DH Zinc Hub V2.9.5 [OP]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DH%20Zinc%20Hub%20V%20OP.lua")
addscript(1962086868,"Scripts for Current Game", "Tower Of Hell: AutoWin, Get All Items, GodMode", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Tower%20Of%20Hell%20AutoWin%20Get%20All%20Items%20GodMode.lua")
addscript(5293755937,"Scripts for Current Game", "Speed Run Simulator GUI", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Speed%20Run%20Simulator%20GUI.lua")
addscriptexist(606849621, "Jailbreak - No Wait, Inf Nitro, No Shoot Delay & More", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Jailbreak%20%20No%20Wait%20Inf%20Nitro%20No%20Shoot%20Delay%20%20More.lua")
addscript(11939099110,"Scripts for Current Game", "Ski-Race OP Autofarm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/SkiRace%20OP%20Autofarm.lua")
addscriptuniversal("GO TO JAIL AND MAKE FRIENDS TO ESCAPE tycoon", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/GO%20TO%20JAIL%20AND%20MAKE%20FRIENDS%20TO%20ESCAPE%20tycoon.lua")
addscriptexist(2753915549, "Blox Fruits SCRIPT Pc AutoFarm Level,Devil Fruit,Gun Mastery,More FREE", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Blox%20Fruits%20SCRIPT%20Pc%20AutoFarm%20LevelDevil%20FruitGun%20MasteryMore%20FREE.lua")
addhub("Wheel Hub Free/Paid/Universal Script Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Wheel%20Hub%20FreePaidUniversal%20Script%20Hub.lua")
addscriptuniversal("sasdoors v1.3 | doors gui", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/sasdoors%20v%20%20doors%20gui.lua")
addscript(2474168535,"Scripts for Current Game", "westbound.pro [V1.6]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/westboundpro%20V.lua")
addscriptexist(4616652839, "NEW Shindo Life INFINITE Jump Script ! ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/NEW%20Shindo%20Life%20INFINITE%20Jump%20Script%20%20.lua")
addscriptuniversal("Friend Detector, Friend Notification System", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Friend%20Detector%20Friend%20Notification%20System.lua")
addscriptuniversal("xaoui ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/xaoui%20.lua")
addscript(292439477,"Scripts for Current Game", "Phantom Forces | Chams ESP", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20%20Chams%20ESP.lua")
addscriptexist(292439477, "Phantom Forces Aimbot, ESP And Name ESP Working 15/02/2023", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20Aimbot%20ESP%20And%20Name%20ESP%20Working%20.lua")
addscript(12197250120,"Scripts for Current Game", "+1 World Autofarm and stuff", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20World%20Autofarm%20and%20stuff.lua")
addscript(6075270490,"Scripts for Current Game", "Teamwork Puzzles Autofarm/Autocomplete", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Teamwork%20Puzzles%20AutofarmAutocomplete.lua")
addscriptexist(537413528, "OP Build A Boat For Treasure Autofarm Script V.G Hub", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20Build%20A%20Boat%20For%20Treasure%20Autofarm%20Script%20VG%20Hub.lua")
addscript(11345435986,"Scripts for Current Game", "Chainsaw Man: Devils Heart | Heart Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Chainsaw%20Man%20Devils%20Heart%20%20Heart%20Farm.lua")
addscriptexist(11345435986, "Chainsaw Man: Devils Heart | Auto Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Chainsaw%20Man%20Devils%20Heart%20%20Auto%20Farm.lua")
addscriptexist(537413528, "Build A Boat Script[New]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Build%20A%20Boat%20ScriptNew.lua")
addscriptexist(6516141723, "Roblox Doors Custom Entity Spawner V2", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Roblox%20Doors%20Custom%20Entity%20Spawner%20V.lua")
addscript(10726371567,"Scripts for Current Game", "Auto Collect Card ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Auto%20Collect%20Card%20.lua")
addscriptuniversal("Sikus UI Library sliders, toggles, dropdowns and more!", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Sikus%20UI%20Library%20sliders%20toggles%20dropdowns%20and%20more.lua")
addscriptuniversal("Chat Bypasser Script Unbannable", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Chat%20Bypasser%20Script%20Unbannable.lua")
addscriptexist(292439477, "Phantom Forces | Third Person [OPEN SOURCE]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20%20Third%20Person%20OPEN%20SOURCE.lua")
addscriptexist(292439477, "Phantom Forces | Gun Mods [OPEN SOURCE]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Phantom%20Forces%20%20Gun%20Mods%20OPEN%20SOURCE.lua")
addscript(11989217843,"Scripts for Current Game", "COLLECT CARD / OXYGEN", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/COLLECT%20CARD%20%20OXYGEN.lua")
addscriptuniversal("Auto ServerHop Devil Heart Farm", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Auto%20ServerHop%20Devil%20Heart%20Farm.lua")
addhub("Finite Hub [FREE AND PAID FEATURES]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Finite%20Hub%20FREE%20AND%20PAID%20FEATURES.lua")
addscriptexist(2788229376, "[OP] DH Zinc Hub v2.8 [NEW FEATURES & LOTS MORE]", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OP%20DH%20Zinc%20Hub%20v%20NEW%20FEATURES%20%20LOTS%20MORE.lua")
addscript(7732789524,"Scripts for Current Game", "Auto Kick All Ball", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Auto%20Kick%20All%20Ball.lua")
addscriptexist(6678877691, "ZoWare Script OP Constantly Bypassed", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/ZoWare%20Script%20OP%20Constantly%20Bypassed.lua")
addscript(4483381587,"Scripts for Current Game", "Remote Spy | Simple Spy V3", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Remote%20Spy%20%20Simple%20Spy%20V.lua")
addscriptexist(4483381587, "Webhook Spammer Script", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Webhook%20Spammer%20Script.lua")
addscriptexist(2753915549, " Blox Fruits Void Hub V2 Teleport Mirage And Gear", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/%20Blox%20Fruits%20Void%20Hub%20V%20Teleport%20Mirage%20And%20Gear.lua")
addhub("OXYGEN HUB 26 Games ", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/OXYGEN%20HUB%20%20Games%20.lua")
addscript(5602055394,"Scripts for Current Game", "HOOD MODDED SCRIPT", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/HOOD%20MODDED%20SCRIPT.lua")
addscript(8130299583,"Scripts for Current Game", "trident survival", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/trident%20survival.lua")
addscriptuniversal("Simple Lua Obfuscator", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Simple%20Lua%20Obfuscator.lua")
addscriptexist(2788229376, "DA HOOD ABYS FREE INTERNAL SCRIPT", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/DA%20HOOD%20ABYS%20FREE%20INTERNAL%20SCRIPT.lua")
addscriptexist(2788229376, "FREE DA HOOD SCRIPT UI PARADOX", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/FREE%20DA%20HOOD%20SCRIPT%20UI%20PARADOX.lua")
addscript(301549746,"Scripts for Current Game", "Counter Blox Godmode", "pulled from rscripts", "https://raw.githubusercontent.com/Fantemil/Trenglehub/main/Scripts/Autoadd/Counter%20Blox%20Godmode.lua")