Luazifier = {}  setmetatable(Luazifier, {__metatable = "Don' t touch my table P-Pervert!"}) _G.Autofarm = false Luazifier.ScreenGui1 = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")) Luazifier.TextLabel1 = Instance.new("TextLabel", Luazifier.ScreenGui1) Luazifier.Frame1 = Instance.new("Frame", Luazifier.TextLabel1) Luazifier.TextButton1 = Instance.new("TextButton", Luazifier.Frame1) Luazifier.ScreenGui1.DisplayOrder = 0 Luazifier.ScreenGui1.Enabled = true Luazifier.ScreenGui1.IgnoreGuiInset = false Luazifier.ScreenGui1.Name = "ScreenGui" Luazifier.ScreenGui1.ResetOnSpawn = true Luazifier.ScreenGui1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling Luazifier.ScreenGui1.Archivable = true Luazifier.ScreenGui1.AutoLocalize = true Luazifier.ScreenGui1.Parent = game.CoreGui Luazifier.ScreenGui1.ResetOnSpawn = false Luazifier.TextLabel1.Active = true Luazifier.TextLabel1.AnchorPoint = Vector2.new(0, 0) Luazifier.TextLabel1.BackgroundColor3 = Color3.new(1, 1, 1) Luazifier.TextLabel1.BackgroundTransparency = 0 Luazifier.TextLabel1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843) Luazifier.TextLabel1.BorderSizePixel = 1 Luazifier.TextLabel1.Draggable = true Luazifier.TextLabel1.LayoutOrder = 0 Luazifier.TextLabel1.Name = "TextLabel" Luazifier.TextLabel1.Position = UDim2.new(0.10199999809265, 0, 0.045000001788139, 0) Luazifier.TextLabel1.Rotation = 0 Luazifier.TextLabel1.Selectable = false Luazifier.TextLabel1.Size = UDim2.new(0, 179, 0, 15) Luazifier.TextLabel1.SizeConstraint = Enum.SizeConstraint.RelativeXY Luazifier.TextLabel1.Visible = true Luazifier.TextLabel1.ZIndex = 1 Luazifier.TextLabel1.Archivable = true Luazifier.TextLabel1.ClipsDescendants = false Luazifier.TextLabel1.AutoLocalize = true Luazifier.TextLabel1.Font = Enum.Font.SourceSans Luazifier.TextLabel1.Text = "Speed City" Luazifier.TextLabel1.TextColor3 = Color3.new(0, 0, 0) Luazifier.TextLabel1.TextScaled = false Luazifier.TextLabel1.TextSize = 14 Luazifier.TextLabel1.TextStrokeColor3 = Color3.new(0, 0, 0) Luazifier.TextLabel1.TextStrokeTransparency = 1 Luazifier.TextLabel1.TextTransparency = 0 Luazifier.TextLabel1.TextTruncate = Enum.TextTruncate.None Luazifier.TextLabel1.TextWrapped = false Luazifier.TextLabel1.TextXAlignment = Enum.TextXAlignment.Center Luazifier.TextLabel1.TextYAlignment = Enum.TextYAlignment.Center Luazifier.Frame1.Active = false Luazifier.Frame1.AnchorPoint = Vector2.new(0, 0) Luazifier.Frame1.BackgroundColor3 = Color3.new(0.603922, 0, 0.00784314) Luazifier.Frame1.BackgroundTransparency = 0 Luazifier.Frame1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843) Luazifier.Frame1.BorderSizePixel = 1 Luazifier.Frame1.LayoutOrder = 0 Luazifier.Frame1.Name = "Frame" Luazifier.Frame1.Position = UDim2.new(-0.0013183081755415, 0, 0.94684678316116, 0) Luazifier.Frame1.Rotation = 0 Luazifier.Frame1.Selectable = false Luazifier.Frame1.Size = UDim2.new(0, 179, 0, 62) Luazifier.Frame1.SizeConstraint = Enum.SizeConstraint.RelativeXY Luazifier.Frame1.Style = Enum.FrameStyle.Custom Luazifier.Frame1.Visible = true Luazifier.Frame1.ZIndex = 1 Luazifier.Frame1.Archivable = true Luazifier.Frame1.ClipsDescendants = false Luazifier.Frame1.AutoLocalize = true Luazifier.TextButton1.Active = true Luazifier.TextButton1.AnchorPoint = Vector2.new(0, 0) Luazifier.TextButton1.BackgroundColor3 = Color3.new(1, 1, 1) Luazifier.TextButton1.BackgroundTransparency = 0 Luazifier.TextButton1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843) Luazifier.TextButton1.BorderSizePixel = 1 Luazifier.TextButton1.LayoutOrder = 0 Luazifier.TextButton1.Modal = false Luazifier.TextButton1.Name = "TextButton" Luazifier.TextButton1.Position = UDim2.new(0.083798885345459, 0, 0.19354838132858, 0) Luazifier.TextButton1.Rotation = 0 Luazifier.TextButton1.Selectable = true Luazifier.TextButton1.Selected = false Luazifier.TextButton1.Size = UDim2.new(0, 149, 0, 38) Luazifier.TextButton1.SizeConstraint = Enum.SizeConstraint.RelativeXY Luazifier.TextButton1.Style = Enum.ButtonStyle.Custom Luazifier.TextButton1.Visible = true Luazifier.TextButton1.ZIndex = 1 Luazifier.TextButton1.Archivable = true Luazifier.TextButton1.ClipsDescendants = false Luazifier.TextButton1.AutoLocalize = true Luazifier.TextButton1.Font = Enum.Font.SourceSans Luazifier.TextButton1.Text = "Collect All Orbs" Luazifier.TextButton1.TextColor3 = Color3.new(0, 0, 0) Luazifier.TextButton1.TextScaled = false Luazifier.TextButton1.TextSize = 14 Luazifier.TextButton1.TextStrokeColor3 = Color3.new(0, 0, 0) Luazifier.TextButton1.TextStrokeTransparency = 1 Luazifier.TextButton1.TextTransparency = 0 Luazifier.TextButton1.TextTruncate = Enum.TextTruncate.None Luazifier.TextButton1.TextWrapped = false Luazifier.TextButton1.TextXAlignment = Enum.TextXAlignment.Center Luazifier.TextButton1.TextYAlignment = Enum.TextYAlignment.Center Luazifier.TextButton1.MouseButton1Up:connect(function()  if _G.Autofarm == true then   _G.Autofarm = false   Luazifier.TextButton1.BackgroundColor3 = Color3.new(1, 1, 1)   Luazifier.TextButton1.BackgroundTransparency = 0   Luazifier.TextButton1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)   Luazifier.TextButton1.BorderSizePixel = 1  else   _G.Autofarm = true   while _G.Autofarm == true do    Luazifier.TextButton1.BackgroundColor3 = Color3.new(0.278431, 1, 0.168627)    Luazifier.TextButton1.BackgroundTransparency = 0    Luazifier.TextButton1.BorderColor3 = Color3.new(0.0588235, 0.207843, 0.0470588)    Luazifier.TextButton1.BorderSizePixel = 1    for i = 1, #game.Workspace.MainMap.Spawners:GetChildren() do     wait()     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.MainMap.Spawners:GetChildren()[i].CFrame    end   end  end end)  local player = game:service'Players'.LocalPlayer; local character = player.Character or player.CharacterAdded:wait();  local getMap = function() local k = "" local lvl = game:service'Players'.LocalPlayer.leaderstats.Steps.Value if lvl >= 500000 and k == "" then k = "BeachMap" else if lvl >= 75000 and k == "" then k = "VolcanoMap" else if lvl >= 50000 and k == "" then k = "OldMap" else if lvl >= 2500 and k == "" then k = "Winter" else if lvl < 2500 and k == "" then k = "MainMap" end end end end end return k end  spawn(function() spawn(function() while wait(0.1) do for _,orb in next, workspace:WaitForChild(getMap()).Spawners:GetChildren() do if orb:FindFirstChildOfClass("Model") then character.HumanoidRootPart.CFrame = CFrame.new(orb.Position) wait(0.05) end end end end) spawn(function() while wait(0.25) do if getMap() == "Winter" then character.HumanoidRootPart.CFrame = CFrame.new(-1470, 1213.00049, -2675) character.Humanoid:MoveTo(Vector3.new(-1000, 1213.00049, -2675)) else if getMap() == "OldMap" then character.HumanoidRootPart.CFrame = CFrame.new(-2388, 2742.49976, 390) character.Humanoid:MoveTo(Vector3.new(-2000, 2742.49976, 390)) else if getMap() == "VolcanoMap" then character.HumanoidRootPart.CFrame = CFrame.new(-1261, 1849.59656, -11) character.Humanoid:MoveTo(Vector3.new(-1000, 1849.59656, -11)) else if getMap() == "BeachMap" then character.HumanoidRootPart.CFrame = CFrame.new(-3613.07739, 67.7421036, 1119.66309) character.Humanoid:MoveTo(Vector3.new(-3000.07739, 67.7421036, 1119.66309)) end end end end end end) spawn(function() game:service'RunService'.Stepped:Connect(function() character.Humanoid.WalkSpeed = 400; character.Humanoid:ChangeState(11) end) end) end)