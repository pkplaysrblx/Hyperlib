_G.AutoFarm = true
local ReplicatedStorage = game:GetService("ReplicatedStorage").Remotes
if _G.AutoFarm == true then
   game:GetService("RunService").RenderStepped:Connect(
       function()
           ReplicatedStorage.AddSpeed:FireServer()
       end
   )
end