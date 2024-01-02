local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Booth Scam", HidePremium = false})
local isAnchored = true

local Tab = Window:MakeTab({
    Name = "TP to Booth (P2)",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
OrionLib:MakeNotification({
    Name = "Booth Scam Hub",
    Content = "Welcome! This is made by chimmiye.",
    Image = "rbxassetid://4483345998",
    Time = 5
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
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-958.966248, 297.602417, -2131.62476, 0.150196105, 0, -0.988656342, 0, 1.00000012, 0, 0.988656402, 0, 0.15019612)
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
Tab:AddLabel("Middle Left Side Booth Slots (coming soon)")

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
MiscTab:AddLabel("")
MiscTab:AddTextbox({
    Name = "AutoServerHop",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        local Player = game.Players.LocalPlayer    
        local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Api = "https://games.roblox.com/v1/games/"

        local _place, _id = game.PlaceId, game.JobId
        local _servers = Api.._place.."/servers/Public?sortOrder=Desc&limit=100"

        function ListServers(cursor)
            local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
            return Http:JSONDecode(Raw)
        end

        local waitTime = tonumber(Value) or 0
        local retryAttempts = 3
        local Next

        while true do
            local Servers = ListServers(Next)

            for i, v in next, Servers.data do
                if v.playing < v.maxPlayers and v.id ~= _id then
                    if v.playing >= v.maxPlayers then
                        print("Skipped server:", v.id, "as it is now full.")
                        continue
                    end

                    for attempt = 1, retryAttempts do
                        if waitTime > 0 then
                            print("Waiting for", waitTime, "seconds before attempting to teleport to the next server...")
                            wait(waitTime)
                        end

                        local success, errorInfo = pcall(TPS.TeleportToPlaceInstance, TPS, _place, v.id, Player)

                        if success then
                            print("Successfully teleported to server:", v.id)
                            return
                        else
                            print("Failed to teleport to server:", v.id, "Error:", errorInfo)
                            wait(1)
                        end
                    end
                end
            end

            Next = Servers.nextPageCursor
            print("No available servers to teleport.")
        end
    end	  
})

MiscTab:AddLabel("")

OrionLib:Init()
-- destroying the interface: OrionLib:Destroy() 
