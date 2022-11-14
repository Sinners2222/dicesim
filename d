local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Script Hub -- By Skid#4490 ", "Sentinel")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("StupidShit")
Section:NewButton("Please Join My Discord", "Press To Copy Invitation to Clipboard", function ()
    setclipboard('https://discord.gg/CSrCBEcz')
end)

Section:NewSlider("WalkSpeed", "More Speed", 500, 25, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("JumpPower", "Jump Higher", 500, 50, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section:NewKeybind("Activate/Deactivate GUI", "You Can Customize To The Key You Want", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)


local Tab = Window:NewTab("Dice Simulator")
local Section = Tab:NewSection("Auto Farms")
Section:NewLabel("Click E to turn off and on Auto Sell")
Section:NewLabel("Click Q to turn off and on Auto Click (hold dice out)")
Section:NewLabel("Click R to turn off and on Auto Collect Gems")
    local Key = "E"
local Toggle = false
game:GetService("UserInputService").InputBegan:Connect(function(keyobject, stuffhappening)
    if keyobject.KeyCode == Enum.KeyCode[Key] and not stuffhappening then 
        Toggle = not Toggle
    end
end)


game:GetService('RunService').Stepped:connect(function()
    if Toggle then
       local args = {
    [1] = "Sell2",
    [2] = workspace.Sells.Lobby
}

game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
    end
end)
local Key = "Q"
local Toggle = false
game:GetService("UserInputService").InputBegan:Connect(function(keyobject, stuffhappening)
    if keyobject.KeyCode == Enum.KeyCode[Key] and not stuffhappening then 
        Toggle = not Toggle
    end
end)


game:GetService('RunService').Stepped:connect(function()
    if Toggle then
local args = {
    [1] = "Roll2"
}

game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
    end
end)
local Key = "R"
local Toggle = false
game:GetService("UserInputService").InputBegan:Connect(function(keyobject, stuffhappening)
    if keyobject.KeyCode == Enum.KeyCode[Key] and not stuffhappening then 
        Toggle = not Toggle
    end
end)


game:GetService('RunService').Stepped:connect(function()
    if Toggle then
local RunService = game:GetService("RunService")
            local hrun4 = RunService.Heartbeat:Connect(function(step)
            for i,v in pairs(game:GetService("Workspace").Gems:GetChildren()) do wait(0.01)
    firetouchinterest(game.Players.LocalPlayer.Character.UpperTorso,v,0)
            end
            end)
    end
end)
local Key = "R"
local Toggle = false
game:GetService("UserInputService").InputBegan:Connect(function(keyobject, stuffhappening)
    if keyobject.KeyCode == Enum.KeyCode[Key] and not stuffhappening then 
        Toggle = not Toggle
    end
end)


game:GetService('RunService').Stepped:connect(function()
    if Toggle then
loadstring(game:HttpGet("https://raw.githubusercontent.com/Sinners2222/dicesim/main/rebirth"))()
            end
            end)
    end
end)
