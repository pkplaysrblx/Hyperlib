-- true/false to toggle -- made by 10x squared by 5
shared.godMode = true

local player = game.Players.LocalPlayer
local namecall; namecall = hookmetamethod(game, '__namecall', function(object, ...)
local args = {...}

if getnamecallmethod() == "FireServer" then
   if shared.godMode then
       if object.Name == 'DealWeaponDamage' and args[3] == player.Character then
           args[3] = math.random(1,200);
       elseif object.Name == 'DealBossDamage' and args[2] == player.Character then
               args[2] = math.random(1,200);
           end;
       end;
   end;
   return namecall(object, unpack(args));
end);