local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Booth Scam", HidePremium = false})
local isAnchored = true

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
Tab:AddLabel("Middle Right Side Booth Slots")
Tab:AddButton({
    Name = "1",
    Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-927.376587, 297.602448, -2142.87378, 0.42347157, -7.21762916e-08, -0.905909359, -5.93791967e-08, 1, -1.07429827e-07, 0.905909359, 9.92856499e-08, 0.42347157)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = isAnchored
local args = {
    [1] = "22"
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Booths_ClaimBooth"):InvokeServer(unpack(args))
      end    
})

Tab:AddButton({
    Name = "2",
    Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943.36377, 297.747894, -2135.62939, 0.335854083, 5.92309846e-08, -0.941914022, 8.78767068e-08, 1, 9.42174481e-08, 0.941914022, -1.1441562e-07, 0.335854083)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = isAnchored
local args = {
    [1] = "23"
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Booths_ClaimBooth"):InvokeServer(unpack(args))
      end    
})

Tab:AddButton({
    Name = "3",
    Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-958.966248, 297.602417, -2131.62476, 0.219019756, 0, -0.975720406, -0, 1.00000012, -0, 0.975720525, 0, 0.219019726)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = isAnchored
local args = {
    [1] = "19"
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Booths_ClaimBooth"):InvokeServer(unpack(args))
      end    
})

Tab:AddButton({
    Name = "4",
    Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975.929688, 297.602539, -2129.85962, -0.0113915838, 0, -0.999935091, 0, 1.00000012, -0, 0.99993521, -0, -0.0113915829)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = isAnchored
local args = {
    [1] = "27"
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Booths_ClaimBooth"):InvokeServer(unpack(args))
      end    
})

Tab:AddButton({
    Name = "5",
    Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-992.800903, 297.602448, -2130.12402, -0.0149573004, 0, -0.999888122, 0, 0.99999994, -0, 0.999888122, -0, -0.0149573004)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = isAnchored
local args = {
    [1] = "26"
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Booths_ClaimBooth"):InvokeServer(unpack(args))
      end    
})

Tab:AddButton({
    Name = "6",
    Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1010.80737, 297.602448, -2132.48779, -0.109715186, 9.2034135e-08, -0.993963063, 1.0030378e-07, 1, 8.15214278e-08, 0.993963063, -9.07541136e-08, -0.109715186)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = isAnchored
local args = {
    [1] = "30"
}

game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Booths_ClaimBooth"):InvokeServer(unpack(args))
      end    
})

local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

MiscTab:AddLabel("No toggle because yes")

MiscTab:AddButton({
    Name = "Anchor Off",
    Callback = function()
        isAnchored = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
      end    
})

MiscTab:AddButton({
    Name = "Anchor On (On by default)",
    Callback = function()
        isAnchored = true
      end    
})

OrionLib:Init()
-- destroying the interface: OrionLib:Destroy() 
