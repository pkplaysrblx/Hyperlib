game.Players.LocalPlayer.NoxyRagdoll_Options.passOption_gravityHands.Value = true
game.Players.LocalPlayer.NoxyRagdoll_Options.badgeOption_gravityBracelet.Value = true




--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Generated by Hydroxide's Upvalue Scanner: https://github.com/Upbolt/Hydroxide

local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()

local scriptPath = game:GetService("Players").LocalPlayer.PlayerGui.RagdollLocalGui.gui.RagdollLocalScript
local closureName = "updateGrabBoosters"
local upvalueIndex = 3
local closureConstants = {
	[1] = "NoxyRagdoll_Options",
	[2] = "WaitForChild",
	[3] = "passOption_gravityHands",
	[4] = "Value",
	[5] = "UserId",
	[6] = 374451644
}

local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
local value = math.huge


-- DO NOT RELY ON THIS FEATURE TO PRODUCE 100% FUNCTIONAL SCRIPTS
debug.setupvalue(closure, upvalueIndex, value)








   if game.CreatorType == Enum.CreatorType.User then
            game.Players.LocalPlayer.UserId = game.CreatorId
            end
            
            if game.CreatorType == Enum.CreatorType.Group then
            game.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id
            end
            
            game.workspace.ragdollSystemScript.RagdollDeath:destroy()
            game.workspace.ragdollSystemScript.RagdollForce:destroy()
            
            
            
            
            
            
            local Cooldown; Cooldown = hookfunction(wait, function(v)
    v = 0;
    return Cooldown(v);
end);