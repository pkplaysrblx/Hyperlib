--Created by CHEATAKK
--[[if it's not difficult for you, 
please support me to motivate me to 
further develop and publish free scripts.

2R$
https://www.roblox.com/game-pass/99279298/Bundle-Headless-Horseman

25R$
https://www.roblox.com/game-pass/98701273/UGC-Super-Super-Happy-Face

50R$
https://www.roblox.com/game-pass/98700251/UGC-Spiky-Halloween-Shades

299R$
https://www.roblox.com/game-pass/91773640/Byc-moze

499R$
https://www.roblox.com/game-pass/100004473/unnamed
or
https://www.roblox.com/game-pass/95369835/unnamed

999R$
https://www.roblox.com/game-pass/93509866/unnamed
or
https://www.roblox.com/game-pass/95367555/unnamed

1990R$
https://www.roblox.com/game-pass/98404426/unnamed

10000R$
https://www.roblox.com/game-pass/99608232/UGC-Dominus-Aureus

thank you
]]

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local me = Players.LocalPlayer

local allcubes = {}

local function getAllPlayersCubes()
    local allcubes = {}
    
    print("getting players cubes")
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= me then
            print(player.Character.Name)
            local hasfolder = workspace[player.Name]:FindFirstChild("PlayerCubes")
            print(player.Name,hasfolder ~= nil)
            if hasfolder ~= nil then
                print("getting players cubes in a folder")
                --get all cubes
                for _, cube in pairs(player.Character.PlayerCubes:GetDescendants()) do
                    if cube:IsA("BasePart") and not me:IsFriendsWith(player.UserId) then
                        print(me:IsFriendsWith(player.UserId),player)
                        print("found cube",cube)
                        table.insert(allcubes, cube)
                    end
                end
            end
        end
    end
    return allcubes
end

local function getPlayerSize()
    print("getting size of a player")
    local hasSize = workspace.Map.Leaderboard.Leaderboard.LeaderboardUI.LocalPlayerFrame:FindFirstChild("Score")
    if hasSize ~= nil then
        print(tonumber(hasSize.TextLabel.Text))
        return tonumber(hasSize.TextLabel.Text)
    else 
        return 0
    end
end

local function calculatePowerOfTwo(n)
    local result = 2 ^ n
    return result
end


local function compareCubesWithPlayerMass(cube,mass)
    print("start comparing")
    local scoregui = cube:FindFirstChild("ScoreGui")
    if scoregui ~= nil then
        local score = scoregui:FindFirstChild("Score")
        
        if score ~= nil and score.Text ~= nil then
            local num = tonumber(score.Text)
            
            if num == nil then
                powerCount = tonumber(cube.Parent.Name)
                num = calculatePowerOfTwo(powerCount)
            end
            print("comparing numbers ",mass, num)
            if mass > num then
                return true
            end
        end
    else
        return false
    end
    return false
end

-- define a function to set the CFrame of the BaseParts in CubeFolder to the position of the player's HumanoidRootPart
local function setCubeCFrame(cube)
    print("setting cube position")
    cube.CFrame = CFrame.new(me.Character.HumanoidRootPart.Position)
    cube.Anchored = true
end

-- connect the function to the "e" key press event
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.E then
        local cubes = getAllPlayersCubes() --allcubes
        local mass = getPlayerSize()
        print(#allcubes)
        if mass ~= nil then
            print(#cubes)
            for i, cube in pairs(cubes) do
                if cube ~= nil then
                    print(cube)
                    if compareCubesWithPlayerMass(cube,mass) then
                        setCubeCFrame(cube)
                        --return
                    end
                end
            end
        end
    end
end)