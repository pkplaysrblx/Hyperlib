 local library = loadstring(game:HttpGet("https://pastebin.com/raw/tqKTJQAA", true))(); local run = game:service("RunService"); local runcon; local players = game:service("Players"); local player = players.LocalPlayer; local camera = workspace.CurrentCamera; local uis = game:service("UserInputService"); local curc; local ChatScript = player.PlayerGui.GUI.Main.Chats.DisplayChat  local mouse = player:GetMouse(); local toggles = {  abk = Enum.UserInputType.MouseButton2;  iag = false;     }; local traced = {}; local tsp = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2 + 400); local gs = game:GetService("GuiService"):GetGuiInset(); local sc = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2); local mousemoverel = mousemoverel or Input.MoveMouse; local hookfunction = hookfunction or detour_function or replaceclosure; local getnamecallmethod = getnamecallmethod or get_namecall_method; local setupvalue = debug.setupvalue; local Client = player.PlayerGui.GUI.Client; local visuals = library:CreateWindow('Visual Cheats'); local combat = library:CreateWindow('Combat Cheats'); local misc = library:CreateWindow("Miscellaneous Cheats") pcall(function()     Client.Disabled = false end)   visuals:Toggle('Tracers', {  location = toggles,  flag = "tracers" }) visuals:Section('ESP'); visuals:Toggle('Name ESP' , {  location = toggles ,  flag = "nESP" }); visuals:Toggle('Head ESP' , {  location = toggles ,  flag = "hESP" }); combat:Toggle('Silent Aim', {  location = toggles,  flag = 'silent' }); combat:Section('Aimbot') combat:Toggle('Aimbot', {  location = toggles,  flag = 'aimbot' }); combat:Bind('Aimbot key', {  location = toggles,  flag = 'abk',  kbonly = false,  default = Enum.UserInputType.MouseButton2 }, function(k, b)  toggles.iag = b; end); combat:Section('General'); combat:Dropdown('Aim part', {  location = toggles,  flag = 'abp',  list = {   "Head",   "UpperTorso"  } }); combat:Toggle('Show FOV', {  location = toggles,  flag = 'showfov' }) combat:Slider('FOV', {  location = toggles,  flag = 'fov',  precise = false,  default = 100,  min = 30,  max = 500 }); combat:Section("Gun Modifications")  combat:Button("Gun Modification", function()     local Envs = getsenv(Client)     local FireBullet = rawget(Envs, "firebullet")     game:GetService("RunService").Heartbeat:Connect(function()         setupvalue(FireBullet, 5, 999)         rawset(Envs, "DISABLED", false)         rawset(Envs, "DISABLED2", false)         rawset(Envs, "currentspread", 0)         rawset(Envs, "recoil", 0)         rawset(Envs, "mode", "automatic")         rawset(Envs, "spreadmodifier", 0)         rawset(Envs, "reloadtime", 0)     end) end) combat:Section("Client Sided")  combat:Button("Give Very Long Bat", function()     local Envs = getsenv(Client)     setupvalue(rawget(Envs, "givetools"), 3, "Very Long Bat") end) combat:Button("Give Fasticuffs", function()     local Envs = getsenv(Client)     setupvalue(rawget(Envs, "givetools"), 3, "Fasticuffs") end) misc:Section("Miscellaneous") misc:Box("Clantag", {flag = "clntg", type = "string"}, function(New, Old, Enter)     local Envs = getsenv(ChatScript)     local OldFunc = Envs.createNewMessage     Envs.createNewMessage =  function(PlayerName, TheMessage, Color1, Color2, xValue, teamLabel)         if PlayerName == player.Name then             PlayerName = tostring(New) .. " " .. player.Name         end         return OldFunc(PlayerName, TheMessage, Color1, Color2, xValue, teamLabel)     end end)  function createline()  local a = Drawing.new("Line");  a.Thickness = 1.5;  a.Transparency = 1;  a.Visible = true;  a.Color = Color3.fromRGB(0, 255, 149);  a.From = tsp;  return a; end; function createname(text)  local a = Drawing.new("Text");  a.Transparency = 1;  a.Visible = true;  a.Color = Color3.fromRGB(0, 255, 149);  a.Text = text;  a.Size = 15;  return a;    end; function createcircle()  local a = Drawing.new('Circle');  a.Transparency = 1;  a.Thickness = 1.5;  a.Visible = true;  a.Color = Color3.fromRGB(0, 255, 149);  a.Filled = false;  a.Radius = toggles.fov;  return a; end;     function createsquare()  local a = Drawing.new('Square');  a.Transparency = 1;  a.Thickness = 1.5;  a.Visible = true;  a.Color = Color3.fromRGB(0, 255, 149);  a.Filled = false;  return a; end;   curc = createcircle(); function isInTeam(char)  if player and players:GetPlayerFromCharacter(char) and players:GetPlayerFromCharacter(char).Team and player.Team then   if player.FriendlyFire.Value then    return false;   else    return (player.Team == players:GetPlayerFromCharacter(char).Team);   end  end; end; local gc = function()  local nearest = math.huge  local nearplr;  for i, v in pairs(players:GetPlayers()) do   if v ~= player and v.Character and not isInTeam(v.Character) and v.Character:FindFirstChild(toggles.abp) then    local pos = camera:WorldToScreenPoint(v.Character[toggles.abp].Position)    local diff = math.sqrt((pos.X - sc.X) ^ 2 + (pos.Y + gs.Y - sc.Y) ^ 2)    if diff < nearest and diff < toggles.fov then     nearest = diff;     nearplr = v;    end   end;  end;  return nearplr end; local getrel = function(x, y)  local newy;  local newy;  if x > sc.X then   newx = -(sc.X - x)   newx = newx / 5  else   newx = x - sc.X   newx = newx / 5  end;  if y > sc.Y then   newy = -(sc.Y - y)   newy = newy / 5  else   newy = y - sc.Y   newy = newy / 5  end;  return newx, newy end; run.Stepped:Connect(function()  spawn(function()   for i, v in pairs(players:GetChildren()) do    if v.Character and v.Character:FindFirstChild(toggles.abp) and (not isInTeam(v.Character)) and (toggles.tracers or toggles.nESP or toggles.hESP) then     if not traced[v.Name] then      traced[v.Name] = {       v.Character      };     end;     local vector, onScreen = camera:WorldToScreenPoint(v.Character[toggles.abp].Position)     if toggles.tracers then      if traced[v.Name][2] then       traced[v.Name][2].Visible = (onScreen and toggles.tracers);       traced[v.Name][2].To = Vector2.new(vector.X, vector.Y + gs.Y);      else       traced[v.Name][2] = createline();       traced[v.Name][2].Visible = (onScreen and toggles.tracers);       traced[v.Name][2].To = Vector2.new(vector.X, vector.Y + gs.Y);      end;     end;     if toggles.nESP then      if traced[v.Name][3] then       traced[v.Name][3].Visible = (onScreen and toggles.nESP);       traced[v.Name][3].Position = Vector2.new(vector.X, vector.Y + (gs.Y / 2));      else       traced[v.Name][3] = createname(v.Name);       traced[v.Name][3].Visible = (onScreen and toggles.nESP);       traced[v.Name][3].Position = Vector2.new(vector.X, vector.Y + (gs.Y / 2));      end;        end;     if toggles.hESP then      if traced[v.Name][4] then       traced[v.Name][4].Visible = (onScreen and toggles.hESP);       traced[v.Name][4].Size = Vector2.new(1400 / vector.Z, 1400 / vector.Z);       traced[v.Name][4].Position = Vector2.new((vector.X) - traced[v.Name][4].Size.X / 2, (vector.Y + (gs.Y)) - traced[v.Name][4].Size.Y / 2);      else       traced[v.Name][4] = createsquare();       traced[v.Name][4].Visible = (onScreen and toggles.hESP);       traced[v.Name][4].Size = Vector2.new(1400 / vector.Z, 1400 / vector.Z);       traced[v.Name][4].Position = Vector2.new((vector.X) - traced[v.Name][4].Size.X / 2, (vector.Y + (gs.Y)) - traced[v.Name][4].Size.Y / 2);      end;      end    else     if traced[v.Name] then      if traced[v.Name][2] then       traced[v.Name][2]:Remove();       traced[v.Name][2] = nil;      end;      if traced[v.Name][3] then       traced[v.Name][3]:Remove();       traced[v.Name][3] = nil;      end      if traced[v.Name][4] then       traced[v.Name][4]:Remove();       traced[v.Name][4] = nil;      end     end;    end;   end;  end);  spawn(function()   if toggles.showfov then    curc.Visible = true;    curc.Position = Vector2.new(mouse.X, mouse.Y + gs.Y);    curc.Radius = toggles.fov;   else    curc.Visible = false;   end;  end);  spawn(function()   if toggles.aimbot and toggles.iag then    if gc() ~= nil and gc().Character:FindFirstChild(toggles.abp) then     local pos = camera:WorldToScreenPoint(gc().Character[toggles.abp].Position)     local x, y = getrel(pos.X, pos.Y + gs.Y)     mousemoverel(x, y)    end;   end;  end);    end);     local MT = getrawmetatable(game) local Old = MT.__namecall setreadonly(MT, false)  MT.__namecall = newcclosure(function(self, ...)     if toggles.silent and get_namecall_method() == "FireServer" and ({...})[1] == "HitPart" and gc() ~= nil and gc().Character:FindFirstChild(toggles.abp) then         local Args = {...}         Args[2] = gc().Character[toggles.abp]         Args[3] = gc().Character[toggles.abp].Position         return Old(self, unpack(Args))     elseif string.find(string.lower(get_namecall_method()), "ray") and string.lower(tostring(({...})[1])) == "workspace" and gc() ~= nil and gc().Character:FindFirstChild(toggles.abp) and player.NRPBS.EquippedTool.Value ~= "Railgun" then         return gc().Character[toggles.abp], Vector3.new(1, 1, 1), true     end     return Old(self, ...) end) players.PlayerRemoving:Connect(function(p)  if traced[p.Name] then   if traced[p.Name][2] then    traced[p.Name][2]:Remove();    traced[p.Name][2] = nil;   end;   if traced[p.Name][3] then    traced[p.Name][3]:Remove();    traced[p.Name][3] = nil;   end;   if traced[p.Name][4] then    traced[p.Name][4]:Remove();    traced[p.Name][4] = nil;   end;   traced[p.Name] = nil;  end; end);