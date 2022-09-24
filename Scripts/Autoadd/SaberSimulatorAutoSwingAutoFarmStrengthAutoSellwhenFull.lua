print("Saber GUI Loading...")
local library = {
    windowcount = 0;
}
 
local dragger = {};
local resizer = {};
 
function shuffle(t)
  local tbl = {}
  for i = 1, #t do
    tbl[i] = t[i]
  end
  for i = #tbl, 2, -1 do
    local j = math.random(i)
    tbl[i], tbl[j] = tbl[j], tbl[i]
  end
  return tbl
end
 
do
    local mouse = game:GetService("Players").LocalPlayer:GetMouse();
    local inputService = game:GetService('UserInputService');
    local heartbeat = game:GetService("RunService").Heartbeat;
    -- // credits to Ririchi / Inori for this cute drag function :)
    function dragger.new(frame)
        local s, event = pcall(function()
            return frame.MouseEnter
        end)
 
        if s then
            frame.Active = true;
 
            event:connect(function()
                local input = frame.InputBegan:connect(function(key)
                    if key.UserInputType == Enum.UserInputType.MouseButton1 then
                        local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
                        while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                            frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Quad', 0.1, true);
                        end
                    end
                end)
 
                local leave;
                leave = frame.MouseLeave:connect(function()
                    input:disconnect();
                    leave:disconnect();
                end)
            end)
        end
    end
 
    function resizer.new(p, s)
        p:GetPropertyChangedSignal('AbsoluteSize'):connect(function()
            s.Size = UDim2.new(s.Size.X.Scale, s.Size.X.Offset, s.Size.Y.Scale, p.AbsoluteSize.Y);
        end)
    end
end
 
 
local defaults = {
    txtcolor = Color3.fromRGB(255, 255, 255),
    underline = Color3.fromRGB(0, 255, 140),
    barcolor = Color3.fromRGB(40, 40, 40),
    bgcolor = Color3.fromRGB(30, 30, 30),
}
 
function library:Create(class, props)
    local object = Instance.new(class);
 
    for i, prop in next, props do
        if i ~= "Parent" then
            object[i] = prop;
        end
    end
 
    object.Parent = props.Parent;
    return object;
end
 
function library:CreateWindow(options)
    assert(options.text, "no name");
    local window = {
        count = 0;
        toggles = {},
        closed = false;
    }
 
    local options = options or {};
    setmetatable(options, {__index = defaults})
 
    self.windowcount = self.windowcount + 1;
 
    library.gui = library.gui or self:Create("ScreenGui", {Name = "UILibrary", Parent = game:GetService("CoreGui")})
    window.frame = self:Create("Frame", {
        Name = options.text;
        Parent = self.gui,
        Active = true,
        BackgroundTransparency = 0,
        Size = UDim2.new(0, 190, 0, 30),
        Position = UDim2.new(0, (15 + ((200 * self.windowcount) - 200)), 0, 15),
        BackgroundColor3 = options.barcolor,
        BorderSizePixel = 0;
    })
 
    window.background = self:Create('Frame', {
        Name = 'Background';
        Parent = window.frame,
        BorderSizePixel = 0;
        BackgroundColor3 = options.bgcolor,
        Position = UDim2.new(0, 0, 1, 0),
        Size = UDim2.new(1, 0, 0, 25),
        ClipsDescendants = true;
    })
 
    window.container = self:Create('Frame', {
        Name = 'Container';
        Parent = window.frame,
        BorderSizePixel = 0;
        BackgroundColor3 = options.bgcolor,
        Position = UDim2.new(0, 0, 1, 0),
        Size = UDim2.new(1, 0, 0, 25),
        ClipsDescendants = true;
    })
 
    window.organizer = self:Create('UIListLayout', {
        Name = 'Sorter';
        --Padding = UDim.new(0, 0);
        SortOrder = Enum.SortOrder.LayoutOrder;
        Parent = window.container;
    })
 
    window.padder = self:Create('UIPadding', {
        Name = 'Padding';
        PaddingLeft = UDim.new(0, 10);
        PaddingTop = UDim.new(0, 5);
        Parent = window.container;
    })
 
    self:Create("Frame", {
        Name = 'Underline';
        Size = UDim2.new(1, 0, 0, 1),
        Position = UDim2.new(0, 0, 1, -1),
        BorderSizePixel = 0;
        BackgroundColor3 = options.underline;
        Parent = window.frame
    })
 
    local togglebutton = self:Create("TextButton", {
        Name = 'Toggle';
        ZIndex = 2,
        BackgroundTransparency = 1;
        Position = UDim2.new(1, -25, 0, 0),
        Size = UDim2.new(0, 25, 1, 0),
        Text = "-",
        TextSize = 17,
        TextColor3 = options.txtcolor,
        Font = Enum.Font.SourceSans;
        Parent = window.frame,
    });
 
    togglebutton.MouseButton1Click:connect(function()
        window.closed = not window.closed
        togglebutton.Text = (window.closed and "+" or "-")
        if window.closed then
            window:Resize(true, UDim2.new(1, 0, 0, 0))
        else
            window:Resize(true)
        end
    end)
 
    self:Create("TextLabel", {
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1;
        BorderSizePixel = 0;
        TextColor3 = options.txtcolor,
        TextColor3 = (options.bartextcolor or Color3.fromRGB(255, 255, 255));
        TextSize = 17,
        Font = Enum.Font.SourceSansSemibold;
        Text = options.text or "window",
        Name = "Window",
        Parent = window.frame,
    })
 
    do
        dragger.new(window.frame)
        resizer.new(window.background, window.container);
    end
 
    local function getSize()
        local ySize = 0;
        for i, object in next, window.container:GetChildren() do
            if (not object:IsA('UIListLayout')) and (not object:IsA('UIPadding')) then
                ySize = ySize + object.AbsoluteSize.Y
            end
        end
        return UDim2.new(1, 0, 0, ySize + 10)
    end
 
    function window:Resize(tween, change)
        local size = change or getSize()
        self.container.ClipsDescendants = true;
 
        if tween then
            self.background:TweenSize(size, "Out", "Sine", 0.5, true)
        else
            self.background.Size = size
        end
    end
 
    function window:AddToggle(text, callback)
        self.count = self.count + 1
 
        callback = callback or function() end
        local label = library:Create("TextLabel", {
            Text =  text,
            Size = UDim2.new(1, -10, 0, 20);
            --Position = UDim2.new(0, 5, 0, ((20 * self.count) - 20) + 5),
            BackgroundTransparency = 1;
            TextColor3 = Color3.fromRGB(255, 255, 255);
            TextXAlignment = Enum.TextXAlignment.Left;
            LayoutOrder = self.Count;
            TextSize = 16,
            Font = Enum.Font.SourceSans,
            Parent = self.container;
        })
 
        local button = library:Create("TextButton", {
            Text = "OFF",
            TextColor3 = Color3.fromRGB(255, 25, 25),
            BackgroundTransparency = 1;
            Position = UDim2.new(1, -25, 0, 0),
            Size = UDim2.new(0, 25, 1, 0),
            TextSize = 17,
            Font = Enum.Font.SourceSansSemibold,
            Parent = label;
        })
 
        button.MouseButton1Click:connect(function()
            self.toggles[text] = (not self.toggles[text])
            button.TextColor3 = (self.toggles[text] and Color3.fromRGB(0, 255, 140) or Color3.fromRGB(255, 25, 25))
            button.Text =(self.toggles[text] and "ON" or "OFF")
 
            callback(self.toggles[text])
        end)
 
        self:Resize()
        return button
    end
 
    function window:AddBox(text, callback)
        self.count = self.count + 1
        callback = callback or function() end
 
        local box = library:Create("TextBox", {
            PlaceholderText = text,
            Size = UDim2.new(1, -10, 0, 20);
            --Position = UDim2.new(0, 5, 0, ((20 * self.count) - 20) + 5),
            BackgroundTransparency = 0.75;
            BackgroundColor3 = options.boxcolor,
            TextColor3 = Color3.fromRGB(255, 255, 255);
            TextXAlignment = Enum.TextXAlignment.Center;
            TextSize = 16,
            Text = "",
            Font = Enum.Font.SourceSans,
            LayoutOrder = self.Count;
            BorderSizePixel = 0;
            Parent = self.container;
        })
 
        box.FocusLost:connect(function(...)
            callback(box, ...)
        end)
 
        self:Resize()
        return box
    end
 
    function window:AddButton(text, callback)
        self.count = self.count + 1
 
        callback = callback or function() end
        local button = library:Create("TextButton", {
            Text =  text,
            Size = UDim2.new(1, -10, 0, 20);
            --Position = UDim2.new(0, 5, 0, ((20 * self.count) - 20) + 5),
            BackgroundTransparency = 1;
            TextColor3 = Color3.fromRGB(255, 255, 255);
            TextXAlignment = Enum.TextXAlignment.Left;
            TextSize = 16,
            Font = Enum.Font.SourceSans,
            LayoutOrder = self.Count;
            Parent = self.container;
        })
 
        button.MouseButton1Click:connect(callback)
        self:Resize()
        return button
    end
 
    function window:AddLabel(text)
        self.count = self.count + 1;
 
        local tSize = game:GetService('TextService'):GetTextSize(text, 16, Enum.Font.SourceSans, Vector2.new(math.huge, math.huge))
 
        local button = library:Create("TextLabel", {
            Text =  text,
            Size = UDim2.new(1, -10, 0, tSize.Y + 5);
            TextScaled = false;
            BackgroundTransparency = 1;
            TextColor3 = Color3.fromRGB(255, 255, 255);
            TextXAlignment = Enum.TextXAlignment.Left;
            TextSize = 16,
            Font = Enum.Font.SourceSans,
            LayoutOrder = self.Count;
            Parent = self.container;
        })
 
        self:Resize()
        return button
    end
 
    function window:AddDropdown(options, callback)
        self.count = self.count + 1
        local default = options[1] or "";
 
        callback = callback or function() end
        local dropdown = library:Create("TextLabel", {
            Size = UDim2.new(1, -10, 0, 20);
            BackgroundTransparency = 0.75;
            BackgroundColor3 = options.boxcolor,
            TextColor3 = Color3.fromRGB(255, 255, 255);
            TextXAlignment = Enum.TextXAlignment.Center;
            TextSize = 16,
            Text = default,
            Font = Enum.Font.SourceSans,
            BorderSizePixel = 0;
            LayoutOrder = self.Count;
            Parent = self.container;
        })
 
        local button = library:Create("ImageButton",{
            BackgroundTransparency = 1;
            Image = 'rbxassetid://3234893186';
            Size = UDim2.new(0, 18, 1, 0);
            Position = UDim2.new(1, -20, 0, 0);
            Parent = dropdown;
        })
 
        local frame;
 
        local function isInGui(frame)
            local mloc = game:GetService('UserInputService'):GetMouseLocation();
            local mouse = Vector2.new(mloc.X, mloc.Y - 36);
 
            local x1, x2 = frame.AbsolutePosition.X, frame.AbsolutePosition.X + frame.AbsoluteSize.X;
            local y1, y2 = frame.AbsolutePosition.Y, frame.AbsolutePosition.Y + frame.AbsoluteSize.Y;
 
            return (mouse.X >= x1 and mouse.X <= x2) and (mouse.Y >= y1 and mouse.Y <= y2)
        end
 
        local function count(t)
            local c = 0;
            for i, v in next, t do
                c = c + 1
            end
            return c;
        end
 
        button.MouseButton1Click:connect(function()
            if count(options) == 0 then
                return
            end
 
            if frame then
                frame:Destroy();
                frame = nil;
            end
 
            self.container.ClipsDescendants = false;
 
            frame = library:Create('Frame', {
                Position = UDim2.new(0, 0, 1, 0);
                BackgroundColor3 = Color3.fromRGB(40, 40, 40);
                Size = UDim2.new(0, dropdown.AbsoluteSize.X, 0, (count(options) * 21));
                BorderSizePixel = 0;
                Parent = dropdown;
                ClipsDescendants = true;
                ZIndex = 2;
            })
 
            library:Create('UIListLayout', {
                Name = 'Layout';
                Parent = frame;
            })
 
            for i, option in next, options do
                local selection = library:Create('TextButton', {
                    Text = option;
                    BackgroundColor3 = Color3.fromRGB(40, 40, 40);
                    TextColor3 = Color3.fromRGB(255, 255, 255);
                    BorderSizePixel = 0;
                    TextSize = 16;
                    Font = Enum.Font.SourceSans;
                    Size = UDim2.new(1, 0, 0, 21);
                    Parent = frame;
                    ZIndex = 2;
                })
 
                selection.MouseButton1Click:connect(function()
                    dropdown.Text = option;
                    callback(option)
                    frame.Size = UDim2.new(1, 0, 0, 0);
                    game:GetService('Debris'):AddItem(frame, 0.1)
                end)
            end
        end);
 
        game:GetService('UserInputService').InputBegan:connect(function(m)
            if m.UserInputType == Enum.UserInputType.MouseButton1 then
                if frame and (not isInGui(frame)) then
                    game:GetService('Debris'):AddItem(frame);
                end
            end
        end)
 
        callback(default);
        self:Resize()
        return {
            Refresh = function(self, array)
                game:GetService('Debris'):AddItem(frame);
                options = array
                dropdown.Text = options[1];
            end
        }
    end;
 
 
    return window
end
local afkGui = library:CreateWindow({
  text = "AutoFarm"
})
local eggHatchGui = library:CreateWindow({
  text = "AutoHatch Eggs"
})
local localplayer = library:CreateWindow({
    text = "LocalPlayer"
})
local teleport = library:CreateWindow({
    text = "Teleports"
})
local credits = library:CreateWindow({
    text = "Credits"
})
 
-- // afkGui:AddToggle("AutoFarm Candy", function(state)
-- //   if state then
-- //       waitValue5 = 0.2
-- //       local plrh = game.Players.LocalPlayer.Character.HumanoidRootPart
-- //       while true do
-- //           if game.Players.LocalPlayer.Character.AntiPort and game.Players.LocalPlayer.Character.AntiPortNew  then
-- //               game.Players.LocalPlayer.Character.AntiPort:Destroy()
-- //               game.Players.LocalPlayer.Character.AntiPortNew:Destroy()
-- //               wait(0.1)
-- //           end
-- //           for i,v in pairs(game:GetService("Workspace").CandyHolder:GetChildren()) do
-- //               plrh.CFrame = v.CFrame
-- //               wait(waitValue5)
-- //           end
-- //       end
-- //   else
-- //       waitValue5 = 100000000000000000000000
-- //       plrh.CFrame =  CFrame.new(workspace.DailyReward.Location.CFrame.Position + Vector3.new(0,4,0))
-- //   end
-- // end)
 
afkGui:AddToggle("Auto Swing", function(state)
    if state then
        _G.AutoSwing = true
        local BladeName = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
        while _G.AutoSwing do
            if BladeName then
                game.ReplicatedStorage.Events.Clicked:FireServer()
                game.Players.LocalPlayer.Character[BladeName].RemoteClick:FireServer()
            else
                EquipTool()
            end
            wait()
        end
    else
        _G.AutoSwing = false
    end
end)
 
localplayer:AddBox("Jump Power", function(object, focus)
    if focus then
        local JumpPowerValue = object.Text
        if tonumber(JumpPowerValue) ~= nil then
            --it's a number
            while wait() do
              game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPowerValue
            end
        end
    end
end)
 
localplayer:AddBox("Walk Speed", function(object, focus)
    if focus then
        local WalkSpeedValue = object.Text
        if tonumber(WalkSpeedValue) ~= nil then
            --it's a number
            while wait() do
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeedValue
            end
        end
    end
end)
 
afkGui:AddToggle("AutoFarm Strength", function(state)
    if state then
        waitValue = .01
        while wait(waitValue) do
            game.ReplicatedStorage.Events.Clicked:FireServer()
            game.Players.LocalPlayer.Character["YellowCrusher"].RemoteClick:FireServer()
        end
    else
        waitValue = 100000000000000000000
    end
end)
afkGui:AddToggle("Auto Sell when Full", function(state)
    if state then
        waitValue2 = .1
        while wait(waitValue2) do
            if game.Players.LocalPlayer.PlayerGui.Gui.Submenus.BackpackFull.Visible == true then
                lastCF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Locations.Sell.CFrame
                wait(.7)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastCF
            end
        end
    else
        waitValue2 = 10000000000000000000
    end
end)
afkGui:AddLabel("Click screen when bag full")
 
afkGui:AddToggle("AutoBuy Swords", function(state)
 
    if state then
        waitValue7 = .1
        while wait(waitValue7) do
            game.ReplicatedStorage.Events.BuyAll:FireServer("Swords")
        end
    else
        waitValue7 = 100000000000000
    end
 
end)
afkGui:AddToggle("AutoBuy DNA", function(state)
 
    if state then
        waitValue7 = .1
        while wait(waitValue7) do
            game.ReplicatedStorage.Events.BuyAll:FireServer("Backpacks")
        end
    else
        waitValue7 = 100000000000000
    end
 
 
end)
 
afkGui:AddToggle("AutoCapture Flags", function(state)
 
    if state then
        waitValue8 = 30
        while wait() do
            local CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            for i , v in pairs(shuffle(game.Workspace.Flags:GetChildren())) do
                if v.OwnerValue.Value ~= game.Players.LocalPlayer.Name then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Base.CFrame
                    repeat
                    wait()
                    until  v.OwnerValue.Value == game.Players.LocalPlayer.Name
                    wait(waitValue8)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
                end
            end
        end
    else
        waitValue8 = 100000000000000000000 
    end
end)
 
afkGui:AddToggle("Auto Boss", function(state)
 
    local OriginalGravity = game.Workspace.Gravity
 
    if state then  
 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Boss.Head.CFrame.Position + Vector3.new(0,0,0))
        game.Workspace.Gravity = 1
        local platform = Instance.new("Part",workspace)
        platform.Name = "platform"
        platform.Position = Vector3.new(100,100,100)
        platform.Anchored = true
        platform.CanCollide = true
        local val = Instance.new("IntValue",game.Players.LocalPlayer.Character.HumanoidRootPart)
        val.Value = 0
        local on = true
        while true do
            wait(0.1)
            if on then
                repeat
                    wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Boss.Head.CFrame.Position + Vector3.new(0,3,0))
                    val.Value = val.Value +1
                until val.Value == 11000
                on = false
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(platform.CFrame.Position)
                wait(0.25)
                on = true
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Boss.Head.CFrame.Position + Vector3.new(0,3,0))
            end
        end
    else
        game.Workspace.Gravity = OriginalGravity
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Locations.FirstSpawns.FirstSpawn.CFrame
    end
 
end)   
 
teleport:AddButton("Teleport To All Players", function()
    local children = game.Players:GetChildren()
    local spawnCF = CFrame.new(578,184,95)
 
    local lpcF = game.Players.LocalPlayer.Character.HumanoidRootPart
    for i, child in ipairs(children) do
        local tarLocation = child.Character.HumanoidRootPart
        lpcF.CFrame = tarLocation.CFrame
        lpcF.CFrame = spawnCF
        lpcF.CFrame = tarLocation.CFrame
        wait(2)
    end
end)
 
teleport:AddButton("Teleport To All Islands", function()
    local children = game.Workspace.Locations.Islands:GetChildren()
 
    local lpcF = game.Players.LocalPlayer.Character.HumanoidRootPart
    for i, child in ipairs(shuffle(children)) do
        lpcF.CFrame = CFrame.new(child.CFrame.Position + Vector3.new(0,6,0))
        wait(2)
    end
end)
 
teleport:AddButton("Sell", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Locations.Sell.CFrame
end)
teleport:AddButton("Shop", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Locations.Shop.CFrame
end)
teleport:AddButton("Spawn", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Locations.FirstSpawns.FirstSpawn.CFrame
end)
teleport:AddButton("Crown Shop", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Locations.CrownShop.CFrame
end)
teleport:AddButton("King of The Hill", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Locations.KOH.CFrame
end)
teleport:AddButton("Arena", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Locations.ArenaBase.CFrame
end)
teleport:AddBox("Goto Player:", function(object, focus)
    if focus then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[object.Text].Character.HumanoidRootPart.CFrame
    end
end)
 
for i, child in ipairs(game.ReplicatedStorage.Eggs:GetChildren()) do
    eggHatchGui:AddToggle(child.Name, function(state)
        if state then
            waitValue3 = .1
            while wait(waitValue3) do
                game.ReplicatedStorage.Events.HatchEggs:InvokeServer(child.Fire, 1)
            end
        else
            waitValue3 = 100000000000000
        end
    end)
end
 
credits:AddLabel("GUI made by EmirhanAsik")
credits:AddLabel("Script made by EmirhanAsik")
credits:AddLabel("Extras made by ILikeToAfk")
print("Saber GUI loaded")
 
local VirtualUser=game:service'VirtualUser'
game:GetService("Players").LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
print'Anti Afk ran'