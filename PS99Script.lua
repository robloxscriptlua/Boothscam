local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Booth Scam", HidePremium = false})

local Tab = Window:MakeTab({
    Name = "TP to Booth",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
OrionLib:MakeNotification({
    Name = "Booth Scam Hub",
    Content = "Welcome",
    Image = "rbxassetid://4483345998",
    Time = 3
})
Tab:AddParagraph("Usage","Get one of those ps99 shirts and more updates may come soon unless cyx makes one (also prefferably use alts to avoid main getting banned)")
Tab:AddLabel("MIddle Right Side")
Tab:AddButton({
    Name = "1",
    Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-927.376587, 297.602448, -2142.87378, 0.42347157, -7.21762916e-08, -0.905909359, -5.93791967e-08, 1, -1.07429827e-07, 0.905909359, 9.92856499e-08, 0.42347157)
      end    
})

Tab:AddButton({
    Name = "2",
    Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943.36377, 297.747894, -2135.62939, 0.335854083, 5.92309846e-08, -0.941914022, 8.78767068e-08, 1, 9.42174481e-08, 0.941914022, -1.1441562e-07, 0.335854083)
      end    
})

Tab:AddButton({
    Name = "3",
    Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975.900635, 297.602417, -2129.83984, 0.0414078459, 7.06331917e-08, -0.999142349, 1.39758811e-07, 1, 7.64859038e-08, 0.999142349, -1.42806059e-07, 0.0414078459)
      end    
})

Tab:AddButton({
    Name = "4",
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975.929688, 297.602539, -2129.85962, -0.0113915838, 0, -0.999935091, 0, 1.00000012, -0, 0.99993521, -0, -0.0113915829)
      end    
})

Tab:AddButton({
    Name = "5",
    Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-992.800903, 297.602448, -2130.12402, -0.0149573004, 0, -0.999888122, 0, 0.99999994, -0, 0.999888122, -0, -0.0149573004)
      end    
})

Tab:AddButton({
    Name = "6",
    Callback = function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-992.467102, 296.701782, -2131.34326, -0.103012286, -0.171326384, -0.979814172, -0.0893451869, 0.982666492, -0.162431866, 0.990659297, 0.0708092004, -0.116533846)
      end    
})

OrionLib:Init()
-- destroying the interface: OrionLib:Destroy() 
