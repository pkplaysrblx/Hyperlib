_G.AutoRefill = true -- Set true to false to turn off
game:GetService("RunService").RenderStepped:Connect(function() if _G.AutoRefill == true then game:GetService("ReplicatedStorage").Remotes.RefillRemote:FireServer(true)end end)