-- Settings --

local settings = {
   
   fillcolor = Color3.fromRGB(255, 255, 255);
   filltransparency = .75;
   
   outlinecolor = Color3.fromRGB(255, 255, 255);
   outlinetransparency = 0;
   
}

-- ESP --

local plr = game:service'Players'.LocalPlayer
local highlights = Instance.new('Folder', game:service'CoreGui')

local function addhighlight(object)
   local highlight = Instance.new('Highlight', highlights)
   highlight.Adornee = object
   
   highlight.FillColor = settings.fillcolor
   highlight.FillTransparency = settings.filltransparency
   
   highlight.OutlineColor = settings.outlinecolor
   highlight.OutlineTransparency = settings.outlinetransparency
   
   highlight.Adornee.Changed:Connect(function()
       if not highlight.Adornee or not highlight.Adornee.Parent then
           highlight:Destroy()    
       end
   end)
   
   return highlight
end

local function addtoplayer(object)
   if object:IsA'Model' and object.Name == 'Player' and object.Parent.Name ~= tostring(plr.TeamColor) then
       addhighlight(object)
   end
end

for i,v in pairs(workspace.Players:GetDescendants()) do
   addtoplayer(v)
end

workspace.Players.DescendantAdded:Connect(function(v)
   addtoplayer(v)
end)

-- Silent Aim --

getgenv().fov = 180 -- Any angle between 0-180 degrees
getgenv().visibleCheck = false -- true, false
getgenv().targetedPart = "Head" -- "Random", "Torso" or "Random"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Spoorloos/scripts/main/silent_aim_v2.lua"))()
 