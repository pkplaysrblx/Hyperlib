-- Farewell Infortality. -- Version: 2.82 -- Instances: local ScreenGui = Instance.new("ScreenGui") local main = Instance.new("Frame") local aimbot = Instance.new("TextButton") local esp = Instance.new("TextButton") local Credits = Instance.new("TextLabel") local ImageLabel = Instance.new("ImageLabel") local Close = Instance.new("TextButton") local picklerick = Instance.new("ImageLabel") local hitbox = Instance.new("TextButton") local TextLabel = Instance.new("TextLabel") --Properties: ScreenGui.Parent = game.CoreGui ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling main.Draggable = true main.Active = true main.Selectable = true  main.Name = "main" main.Parent = ScreenGui main.BackgroundColor3 = Color3.new(0.223529, 0.223529, 0.223529) main.BackgroundTransparency = 0.30000001192093 main.LayoutOrder = 1 main.Position = UDim2.new(0.31669268, 0, 0.364864856, 0) main.Size = UDim2.new(0, 409, 0, 198) main.Visible = false  aimbot.Name = "aimbot" aimbot.Parent = main aimbot.BackgroundColor3 = Color3.new(0.670588, 0.835294, 0.921569) aimbot.BorderColor3 = Color3.new(0.670588, 0.835294, 0.92549) aimbot.Position = UDim2.new(0, 0, 0.318181843, 0) aimbot.Size = UDim2.new(0, 409, 0, 29) aimbot.Font = Enum.Font.Gotham aimbot.Text = "AIMBOT (HOLD CTRL)" aimbot.TextColor3 = Color3.new(0, 0, 0) aimbot.TextSize = 14 aimbot.MouseButton1Down:connect(function() loadstring(game:HttpGet(('https://pastebin.com/raw/uCSJY8we'),true))() end)  esp.Name = "esp" esp.Parent = main esp.BackgroundColor3 = Color3.new(0.670588, 0.835294, 0.921569) esp.BorderColor3 = Color3.new(0.670588, 0.835294, 0.92549) esp.Position = UDim2.new(0, 0, 0.581105173, 0) esp.Size = UDim2.new(0, 409, 0, 27) esp.Font = Enum.Font.Gotham esp.Text = "ESP" esp.TextColor3 = Color3.new(0, 0, 0) esp.TextSize = 14 esp.MouseButton1Down:connect(function() loadstring(game:HttpGet(('https://pastebin.com/raw/gwN6fn2v'),true))() end)  Credits.Name = "Credits" Credits.Parent = main Credits.BackgroundColor3 = Color3.new(1, 1, 1) Credits.BackgroundTransparency = 1 Credits.Size = UDim2.new(0, 409, 0, 50) Credits.Font = Enum.Font.Gotham Credits.Text = "Made By w_illu On Novo And Roblox" Credits.TextColor3 = Color3.new(0, 0, 0) Credits.TextSize = 14  ImageLabel.Parent = main ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1) ImageLabel.BackgroundTransparency = 1 ImageLabel.Position = UDim2.new(0, 344, 0, -80) ImageLabel.Size = UDim2.new(0, 195, 0, 291) ImageLabel.Image = "rbxassetid://925327753"  Close.Name = "Close" Close.Parent = main Close.BackgroundColor3 = Color3.new(1, 1, 1) Close.BackgroundTransparency = 1 Close.LayoutOrder = 2 Close.Size = UDim2.new(0, 39, 0, 35) Close.Font = Enum.Font.Gotham Close.Text = "X" Close.TextColor3 = Color3.new(0, 0, 0) Close.TextSize = 14 Close.MouseButton1Down:connect(function() picklerick.Visible = true main.Visible = false end)   picklerick.Name = "pickle rick" picklerick.Parent = ScreenGui picklerick.BackgroundColor3 = Color3.new(1, 1, 1) picklerick.BackgroundTransparency = 1 picklerick.Position = UDim2.new(0, -8, 0, 217) picklerick.Size = UDim2.new(0, 143, 0, 341) picklerick.Image = "rbxassetid://1046402468"  hitbox.Name = "hitbox" hitbox.Parent = picklerick hitbox.BackgroundColor3 = Color3.new(1, 1, 1) hitbox.BackgroundTransparency = 1 hitbox.Position = UDim2.new(0, 17, 0, 24) hitbox.Size = UDim2.new(0, 118, 0, 289) hitbox.Font = Enum.Font.SourceSans hitbox.Text = "" hitbox.TextColor3 = Color3.new(0, 0, 0) hitbox.TextSize = 14 hitbox.MouseButton1Down:connect(function() main.Visible = true picklerick.Visible = false end)  TextLabel.Parent = picklerick TextLabel.BackgroundColor3 = Color3.new(1, 1, 1) TextLabel.BackgroundTransparency = 1 TextLabel.Position = UDim2.new(0, 8, 0, -6) TextLabel.Size = UDim2.new(0, 200, 0, 50) TextLabel.Font = Enum.Font.Gotham TextLabel.Text = "CLICK ME TO OPEN!!!" TextLabel.TextColor3 = Color3.new(0, 0, 0) TextLabel.TextSize = 20 -- Scripts: