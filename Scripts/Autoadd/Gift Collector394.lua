game.Workspace.ChildAdded:Connect(function(a)if a.Name=="Present"then a.Position=game.Players.LocalPlayer.Character.HumanoidRootPart.Position end end)