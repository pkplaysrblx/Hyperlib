--https://www.youtube.com/channel/UCaumQVZDE1vQza2NRSwohvw?view_as=subscriber РјРѕР№ СЋС‚СѓР± РєР°РЅР°Р»  local Workspace = game:GetService("Workspace") local ReplicatedStorage = game:GetService("ReplicatedStorage") local Players = game:GetService("Players") local LocalPlayer = Players.LocalPlayer local CoreGui = game:GetService("CoreGui") local Hint = Instance.new("Hint", CoreGui) local ui = loadstring(game:GetObjects("rbxassetid://4133667265")[1].Source)("Library by wally") local w = ui:CreateWindow('Vehicle Simulator') local b = w:Button("Crate Esp", function()     local Crates = Workspace:getChildren() for i=1,#Crates do if Crates[i].ClassName == "Model" then local Crates2 = Crates[i]:getChildren() for i=1,#Crates2 do if Crates2[i].ClassName == "Model" then local Crates3 = Crates2[i]:getChildren() for i=1,#Crates3 do if Crates3[i].ClassName == "MeshPart" then if Crates3[i]:findFirstChild("Smoke") then if Crates3[i]:findFirstChild("BoxHandleAdornment") then else local BoxHandleAdorment = Instance.new("BoxHandleAdornment",Crates3[i]) BoxHandleAdorment.Size = Vector3.new(10,500,6) BoxHandleAdorment.SizeRelativeOffset = Vector3.new(0,135,0) BoxHandleAdorment.Color3 = Color3.fromRGB(0,255,0) BoxHandleAdorment.Transparency = 0.5 BoxHandleAdorment.AlwaysOnTop = true BoxHandleAdorment.Adornee = Crates3[i] BoxHandleAdorment.ZIndex = 1 local BoxHandleAdorment2 = Instance.new("BoxHandleAdornment",Crates3[i]) BoxHandleAdorment2.Size = Vector3.new(10,4,6) BoxHandleAdorment2.Color3 = Color3.fromRGB(0,0,255) BoxHandleAdorment2.Transparency = 0.3 BoxHandleAdorment2.AlwaysOnTop = true BoxHandleAdorment2.Adornee = Crates3[i] BoxHandleAdorment2.ZIndex = 1 end end end end end end end end end) local b = w:Button("Unlock Achievements", function()     Objects = Workspace.Insteractibles.AchievementObjects:GetChildren()     Objects.AchievementZones.CFrame = CFrame.new(LocalPlayer.Character.HumanoidRootPart.CFrame) end) local b = w:Button("Unlock Perks", function()     Players.LocalPlayer.UserId = 1099580 end) local SC = ReplicatedStorage:WaitForChild("speed_camera", 1) if SC then     w:Section("Speed Cameras")     w:Dropdown("Camera Name", {         list = {             "airport_camera",             "beach_camera",             "downtown_camera2",             "downtown_camera1",             "farm_camera",             "police_camera",         },         location = shared,         flag = "cameratype"     })     w:Button("Fire Camera", function()         SC:FireServer(({             ["airport_camera"] = "airport_camera",             ["beach_camera"] = "beach_camera",             ["downtown_camera2"] = "downtown_camera2",             ["downtown_camera1"] = "downtown_camera1",             ["farm_camera"] = "farm_camera",             ["police_camera"] = "police_camera",         })[shared.cameratype or "airport_camera"])     end) end local b = w:Button('Fire All Cameras', function()     ReplicatedStorage["speed_camera"]:FireServer("airport_camera")     ReplicatedStorage["speed_camera"]:FireServer("beach_camera")     ReplicatedStorage["speed_camera"]:FireServer("downtown_camera2")     ReplicatedStorage["speed_camera"]:FireServer("downtown_camera1")     ReplicatedStorage["speed_camera"]:FireServer("farm_camera")     ReplicatedStorage["speed_camera"]:FireServer("police_camera") end) local b = w:Button("Super Car", function()     FindPlayersCar()     PlayerCar.Handling.Braking.Value = 100000     PlayerCar.Handling.MaxSpeed.Value = 1000     PlayerCar.Handling.Torque.Value = 100000     PlayerCar.Handling.FrictionOffRoad.Value = math.huge     PlayerCar.Handling.FrictionRoad.Value = math.huge     PlayerCar.Handling.Nitro.NitroSpeed.Value = math.huge     PlayerCar.Handling.Nitro.NitroForce.Value = 250000     PlayerCar.Handling.Nitro.NitroRegen.Value = math.huge     Workspace.Gravity = 1000 end) local w = ui:CreateWindow('Settings') function FindPlayersCar()     local Vehicle = Workspace.Vehicles:getChildren()     for i=1,#Vehicle do         if Vehicle[i]:findFirstChild("owner") then             if Vehicle[i].owner.Value == LocalPlayer.Name then                 PlayerCar = Vehicle[i]             end         end     end end local box = w:Box('Braking', {     flag = "b";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.Braking.Value = (tonumber(new)) end) local box = w:Box('MaxSpeed', {     flag = "ms";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.MaxSpeed.Value = (tonumber(new)) end) local box = w:Box('SteeringForce', {     flag = "sf";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.SteeringForce.Value = (tonumber(new)) end) local box = w:Box('SteeringRate', {     flag = "sr";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.SteeringRate.Value = (tonumber(new)) end) local box = w:Box('Torque', {     flag = "t";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.Torque.Value = (tonumber(new)) end) local box = w:Box('AirForceMultiple', {     flag = "afm";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.AirForceMultiple.Value = (tonumber(new)) end) local box = w:Box('ReturnSteeringRate', {     flag = "rsr";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.ReturnSteeringRate.Value = (tonumber(new)) end) local variables = getfenv() local t = w:Toggle('RearWheelDrive', {flag = "rwd", location = variables}, function()     if rwd then         FindPlayersCar()         PlayerCar.Handling.RearWheelDrive.Value = true     else         PlayerCar.Handling.RearWheelDrive.Value = false     end end) local box = w:Box('Force', {     flag = "rwdf";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.RearWheelDrive.Force.Value = (tonumber(new)) end) local t2 = w:Toggle('FrontWheelDrive', {flag = "fwd", location = variables}, function()     if fwd then         FindPlayersCar()         PlayerCar.Handling.FrontWheelDrive.Value = true     else         PlayerCar.Handling.FrontWheelDrive.Value = false     end end) local box = w:Box('Force', {     flag = "fwdf";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.FrontWheelDrive.Force.Value = (tonumber(new)) end) local t3 = w:Toggle('TurboJump', {flag = "jp", location = variables}, function()     if jp then         FindPlayersCar()         PlayerCar.Handling.TurboJump.Value = true     else         PlayerCar.Handling.TurboJump.Value = false     end end) local box = w:Box('TurboJumpHeight', {     flag = "tjh";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.TurboJump.TurboJumpHeight.Value = (tonumber(new)) end) local box = w:Box('FrictionOffRoad', {     flag = "for";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.FrictionOffRoad.Value = (tonumber(new)) end) local box = w:Box('FrictionRoad', {     flag = "fr";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.FrictionRoad.Value = (tonumber(new)) end) local t4 = w:Toggle('AirRotation', {flag = "ar", location = variables}, function()     if ar then         FindPlayersCar()         PlayerCar.Handling.AirRotation.Value = true     else         PlayerCar.Handling.AirRotation.Value = false     end end) local box = w:Box('Power', {     flag = "p";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.AirRotation.Power.Value = (tonumber(new)) end) local box = w:Box('SteeringRadiusConstant', {     flag = "src";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.SteeringRadiusConstant.Value = (tonumber(new)) end) local box = w:Box('SteeringRadius', {     flag = "sr";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.SteeringRadius.Value = (tonumber(new)) end) local t5 = w:Toggle('Nitro', {flag = "n", location = variables}, function()     if n then         FindPlayersCar()         PlayerCar.Handling.Nitro.Value = true     else         PlayerCar.Handling.Nitro.Value = false     end end) local box = w:Box('NitroSpeed', {     flag = "ns";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.Nitro.NitroSpeed.Value = (tonumber(new)) end) local box = w:Box('NitroForce', {     flag = "nf";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.Nitro.NitroForce.Value = (tonumber(new)) end) local box = w:Box('NitroRegen', {     flag = "nr";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.Nitro.NitroRegen.Value = (tonumber(new)) end) local box = w:Box('StickyWheels', {     flag = "nr";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.StickyWheels.Value = (tonumber(new)) end) local t6 = w:Toggle('Suspension', {flag = "s", location = variables}, function()     if s then         FindPlayersCar()         PlayerCar.Handling.Suspension.Value = true     else         PlayerCar.Handling.Suspension.Value = false     end end) local box = w:Box('Stiffness', {     flag = "st";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.Suspension.Stiffness.Value = (tonumber(new)) end) local box = w:Box('Damping', {     flag = "d";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.Suspension.Damping.Value = (tonumber(new)) end) local w = ui:CreateWindow('Settings 2') local box = w:Box('RearHeight', { --Suspension     flag = "rh";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.Suspension.RearHeight.Value = (tonumber(new)) end) local box = w:Box('FrontHeight', { --Suspension     flag = "fh";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.Suspension.FrontHeight.Value = (tonumber(new)) end) local box = w:Box('RearStance', { --Suspension     flag = "rs";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.Suspension.RearStance.Value = (tonumber(new)) end) local box = w:Box('FrontStance', { --Suspension     flag = "fs";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.Suspension.FrontStance.Value = (tonumber(new)) end) local t7 = w:Toggle('Ejector', {flag = "e", location = variables}, function()     if e then         FindPlayersCar()         PlayerCar.Handling.Ejector.Value = true     else         PlayerCar.Handling.Ejector.Value = false     end end) local t8 = w:Toggle('Manual', {flag = "m", location = variables}, function()     if m then         FindPlayersCar()         PlayerCar.Handling.Manual.Value = true     else         PlayerCar.Handling.Manual.Value = false     end end) local box = w:Box('Gears', {     flag = "g";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.Gears.Value = (tonumber(new)) end) local box = w:Box('Mass', {     flag = "ma";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.Mass.Value = (tonumber(new)) end) local box = w:Box('SteeringTorque', {     flag = "st";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.SteeringTorque.Value = (tonumber(new)) end) local box = w:Box('DownForceMultiple', {     flag = "dfm";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.DownForceMultiple.Value = (tonumber(new)) end) local t9 = w:Toggle('Camber', {flag = "c", location = variables}, function()     if c then         FindPlayersCar()         PlayerCar.Handling.Camber.Value = true     else         PlayerCar.Handling.Camber.Value = false     end end) local box = w:Box('FrontCamber', {     flag = "fc";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.Camber.FrontCamber.Value = (tonumber(new)) end) local box = w:Box('RearCamber', {     flag = "rc";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Handling.Camber.RearCamber.Value = (tonumber(new)) end) local t10 = w:Toggle('WeldedDiff', {flag = "wd", location = variables}, function()     if wd then         FindPlayersCar()         PlayerCar.Handling.WeldedDiff.Value = true     else         PlayerCar.Handling.WeldedDiff.Value = false     end end) w:Section('Variables') local box = w:Box('AirMultiple', {     flag = "am";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Variables.AirMultiple.Value = (tonumber(new)) end) local box = w:Box('GroundMultiple', {     flag = "gm";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Variables.GroundMultiple.Value = (tonumber(new)) end) local t11 = w:Toggle('Customizable', {flag = "c", location = variables}, function()     if c then         FindPlayersCar()         PlayerCar.Variables.Customizable.Value = true     else         PlayerCar.Variables.Customizable.Value = false     end end) local t12 = w:Toggle('Drifting', {flag = "d", location = variables}, function()     if d then         FindPlayersCar()         PlayerCar.Variables.Drifting.Value = true     else         PlayerCar.Variables.Drifting.Value = false     end end) local t13 = w:Toggle('Insanity', {flag = "i", location = variables}, function()     if i then         FindPlayersCar()         PlayerCar.Variables.Insanity.Value = true     else         PlayerCar.Variables.Insanity.Value = false     end end) local t14 = w:Toggle('InAirAverage', {flag = "iaa", location = variables}, function()     if iaa then         FindPlayersCar()         PlayerCar.Variables.InAirAverage.Value = true     else         PlayerCar.Variables.InAirAverage.Value = false     end end) local t15 = w:Toggle('IsInWater', {flag = "iiw", location = variables}, function()     if iiw then         FindPlayersCar()         PlayerCar.Variables.IsInWater.Value = true     else         PlayerCar.Variables.IsInWater.Value = false     end end) local box = w:Box('mileage', {     flag = "mi";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     FindPlayersCar()     PlayerCar.Variables.mileage.Value = (tonumber(new)) end) local t16 = w:Toggle('Controls_Enabled', {flag = "ce", location = variables}, function()     if ce then         FindPlayersCar()         PlayerCar.Variables.Controls_Enabled.Value = true     else         PlayerCar.Variables.Controls_Enabled.Value = false     end end) local t17 = w:Toggle('Shunt', {flag = "sh", location = variables}, function()     if sh then         FindPlayersCar()         PlayerCar.Variables.Shunt.Value = true     else         PlayerCar.Variables.Shunt.Value = false     end end) local t18 = w:Toggle('Tbone', {flag = "tb", location = variables}, function()     if tb then         FindPlayersCar()         PlayerCar.Variables.Tbone.Value = true     else         PlayerCar.Variables.Tbone.Value = false     end end) local t19 = w:Toggle('Slam', {flag = "sl", location = variables}, function()     if sl then         FindPlayersCar()         PlayerCar.Variables.Slam.Value = true     else         PlayerCar.Variables.Slam.Value = false     end end) local w = ui:CreateWindow('Character Cheats') local t20 = w:Toggle('Godmode', {flag = "go"}) spawn(function(GO)     if w.flags.go then         LocalPlayer.Character.Humanoid.MaxHealth = math.huge         LocalPlayer.Character.Humanoid.Health = math.huge     end end) local t21 = w:Toggle('Noclip', {flag = "n"}) spawn(function(N)     game:GetService('RunService').Stepped:connect(function()         if w.flags.n then             LocalPlayer.Character.Humanoid:ChangeState(11)         end     end) end) local box = w:Box('JumpPower', {     flag = "jp";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     LocalPlayer.Character.Humanoid.JumpPower = tonumber(new) end) local b2 = w:Button('Reset JumpPower', function()     LocalPlayer.Character.Humanoid.JumpPower = 50 end) local box = w:Box('HipHeight', {     flag = "hh";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     LocalPlayer.Character.Humanoid.HipHeight = tonumber(new) end) local b2 = w:Button('Reset HipHeight', function()     LocalPlayer.Character.Humanoid.HipHeight = 2 end) local s = w:Slider("Gravity", {     min = 0;     max = 1000;     flag = 'gr'  }, function(v)     Workspace.Gravity = v; end) local b2 = w:Button('Reset Gravity', function()     Workspace.Gravity = 196.2 end) local old = workspace.CurrentCamera.FieldOfView local s = w:Slider("FOV", {    min = math.floor(Workspace.CurrentCamera.FieldOfView);    max = 120;    flag = 'fov' }, function(v)    Workspace.CurrentCamera.FieldOfView = v; end) local b2 = w:Button('Reset FOV', function()    s:Set(old) end) w:Section('Kill Yourself') w:Bind("Kill Player", {    flag = "killbind";    kbonly = true;    default = Enum.KeyCode.RightAlt; }, function()    LocalPlayer.Character:BreakJoints() end) local w = ui:CreateWindow('Miscellaneous') w:Section('LeaderStats') local box = w:Box('Money', {     flag = "mo";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     LocalPlayer.leaderstats.Money.Value = tonumber(new) end) local box = w:Box('Exp', {     flag = "e";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     LocalPlayer.leaderstats.Exp.Value = tonumber(new) end) local box = w:Box('Bounty', {     flag = "b";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     LocalPlayer.leaderstats.Bounty.Value = tonumber(new) end) local box = w:Box('Miles Driven', {     flag = "md";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     LocalPlayer.leaderstats["Miles Driven"].Value = tonumber(new) end) w:Section('Car Stuff') local box = w:Box('Exit Distance', {     flag = "ed";     type = 'number';  }, function(box, new, old, enter)     print(new, old, enter)     ReplicatedStorage.VehicleEvents.exit_distance.Value = tonumber(new) end) local b2 = w:Button('Exit Distance', function()     ReplicatedStorage.VehicleEvents.exit_distance.Value = 3 end) local t22 = w:Toggle('No Spawn Delay', {flag = "nsd", location = variables}, function()     if nsd then         ReplicatedStorage.VehicleEvents.CarSpawnDelay.Value = 0     else         ReplicatedStorage.VehicleEvents.CarSpawnDelay.Value = 3     end end) local b = w:Button('Detonate', function()     ReplicatedStorage["Vehicle Modules"].C4.detonate:InvokeServer() end) w:Section('Other') local b = w:Button('Panic', function()     CoreGui.ScreenGui:Destroy() end)