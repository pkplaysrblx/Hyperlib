for i,v in pairs(game:GetService("Workspace").NonGeometry:GetDescendants()) do if v:IsA("SurfaceGui") then local esp = Instance.new("BoxHandleAdornment") esp.Parent = v esp.Name = "Sticker" esp.Adornee = v.Parent esp.AlwaysOnTop = true esp.ZIndex = 0 esp.Size = v.Parent.Size esp.Transparency = 0.3 esp.Color = BrickColor.new("Lime green") end end