game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(239.09440612793, 18.738416671753, 1179.3385009766)
wait(0.1)
local ggg;
ggg = game.Players.LocalPlayer.Character.HumanoidRootPart:GetPropertyChangedSignal("CFrame"):connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(239.09440612793, 18.738416671753, 1179.3385009766)
    wait(1)
    ggg:Disconnect()
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(252.56745910645, 18.565673828125, 1185.0828857422)
end)