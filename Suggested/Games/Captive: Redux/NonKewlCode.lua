--Omg? Open Source??? Real???!!?!?!?!
--Worst Code Ever Below
--Prob Wrong Stuff Too 
--I Am Bad At Coding :(
--Bunch Of Unfinished Shit
--Dont Touch This Unless You Know What You're Doing
if game.PlaceId == 3388553819 then 
local HttpService = game:GetService("HttpService")
local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib(GetName.Name .. " | Ong?", "GrapeTheme")
--End
--Updates
local Tab = Window:NewTab("Updates")
local Section = Tab:NewSection("Added New Teleports To Secret Codes")
local Section = Tab:NewSection("Also Added Character Stuff n Abilitys")
local Section = Tab:NewSection("Lotta Stuff Coming Soon <3")
Section:NewButton("Rejoin","Rejoins Game",function()
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
end)
--End
--Stealth Player
local Tab = Window:NewTab("Survivor")
local Section = Tab:NewSection("Abilitys")
Section:NewButton("Speed Ability","Enables Speed Ability Once",function()
    local args = {[1] = "Speed"}
    game:GetService("ReplicatedStorage").AbilitiesShared.net.Request:FireServer(unpack(args))
end)
Section:NewToggle("Loop Speed Ability","Loop Toggles Speed Ability",function(looplol)
    nahbro = nil 
    local args = {[1] = "Speed"}
    if looplol then 
        nahbro = true 
        while nahbro == true do 
            wait()
            game:GetService("ReplicatedStorage").AbilitiesShared.net.Request:FireServer(unpack(args))
        end 
    else 
        nahbro = false             
end
end)
Section:NewButton("Stealth Ability","Enables Speed Stealth Once",function()
    local args = {[1] = "Stealth"}
    game:GetService("ReplicatedStorage").AbilitiesShared.net.Request:FireServer(unpack(args))
end)
Section:NewToggle("Loop Stealth Ability","Loop Toggle Stealth Ability",function(togglestealth)
    local args = {[1] = "Stealth"}
    LoopToggleStealth = nil
    if togglestealth then
        LoopToggleStealth = true
    while LoopToggleStealth == true do
    wait()
    game:GetService("ReplicatedStorage").AbilitiesShared.net.Request:FireServer(unpack(args))
    end
    else
    togglestealth = false
    end
end)
Section:NewButton("Invisibility Ability","Enables Speed Invisibility Once",function()
    local args = {[1] = "Invisibility"}
    game:GetService("ReplicatedStorage").AbilitiesShared.net.Request:FireServer(unpack(args))
end)
Section:NewToggle("Loop Invisibility Ability","Loop Toggle Invisibility Ability",function(toggleinvisiblity)
    local args = {[1] = "Invisibility"}
    LoopToggleInvisiblity = nil
    if toggleinvisiblity then
        LoopToggleInvisiblity = true
    while LoopToggleInvisiblity == true do
    wait()
    game:GetService("ReplicatedStorage").AbilitiesShared.net.Request:FireServer(unpack(args))
    end
    else
    LoopToggleInvisiblity = false
    end
end)
Section:NewButton("Player Radar Ability","Enables Player Radar Once",function()
    local args = {[1] = "PlayerRadar"}
    game:GetService("ReplicatedStorage").AbilitiesShared.net.Request:FireServer(unpack(args))  
end)
Section:NewToggle("Loop Player Radar Ability","Loop Toggle Player Radar Ability",function(toggleplayerradar)
    local args = {[1] = "PlayerRadar"}
    LoopTogglePlayerRadar = nil
    if toggleplayerradar then
        LoopTogglePlayerRadar = true
    while LoopTogglePlayerRadar == true do
    wait()
    game:GetService("ReplicatedStorage").AbilitiesShared.net.Request:FireServer(unpack(args))
    end
    else
        LoopTogglePlayerRadar = false
    end
end)
--Beast
local Tab = Window:NewTab("Beast")
local Section = Tab:NewSection("Beast Stuff")
local Section = Tab:NewSection("Beast Abilitys")
Section:NewButton("Super Speed Ability","Enables Super Speed Once",function()
    ok = {[1] = "SuperSpeed"} 
    game:GetService("ReplicatedStorage").AbilitiesShared.net.Request:FireServer(unpack(ok))
end)
Section:NewToggle("Loop Super Speed","Loops Super Speed",function(loopsuperspeed)
    LoopToggleSuperSpeed = nil 
    if loopsuperspeed then 
    LoopToggleSuperSpeed = true
    while LoopToggleSuperSpeed == true do 
    wait()
    ok = {[1] = "SuperSpeed"} 
    game:GetService("ReplicatedStorage").AbilitiesShared.net.Request:FireServer(unpack(ok))
end
    else
    LoopToggleSuperSpeed = false
    end
end)
Section:NewButton("Shape Shifter Ability","Enables Shape Shifter Once",function()
    local args = {[1] = "ShapeShifter"}
    game:GetService("ReplicatedStorage").AbilitiesShared.net.Request:FireServer(unpack(args))
end)
Section:NewToggle("Loop Shape Shifter Ability","Loop Toggle Shape Shifter Ability",function(toggleshapeshifter)
    local args = {[1] = "ShapeShifter"}
    LoopToggleShapeShifter = nil
    if toggleshapeshifter then
        LoopToggleShapeShifter = true
    while LoopToggleShapeShifter == true do
    wait()
    game:GetService("ReplicatedStorage").AbilitiesShared.net.Request:FireServer(unpack(args))
    end
    else
        LoopToggleShapeShifter = false
    end
end)
Section:NewButton("Beast Radar Ability","Enables Beast Radar Once",function()
    local args = {[1] = "BeastRadar"}
    game:GetService("ReplicatedStorage").AbilitiesShared.net.Request:FireServer(unpack(args))
end)
Section:NewToggle("Loop Beast Radar Ability","Loop Toggle Beast Radar Ability",function(toggleBeastradar)
    local args = {[1] = "BeastRadar"}
    LoopToggleBeastRadar = nil
    if toggleBeastradar then
        LoopToggleBeastRadar = true
    while LoopToggleBeastRadar == true do
    wait()
    game:GetService("ReplicatedStorage").AbilitiesShared.net.Request:FireServer(unpack(args))
    end
    else
        LoopToggleBeastRadar = false
    end
end)
--End
local Section = Tab:NewSection("Camera")
Section:NewToggle("Third Person Loop", "Turns On Third Person", function(lol)
    if lol then
        game.Players.LocalPlayer.CameraMode = "Classic"
    else
        game.Players.LocalPlayer.CameraMode = "LockFirstPerson"
    end
end)
Section:NewButton("Third Person Once","Only Changes Into Third Person Once",function()
    game.Players.LocalPlayer.CameraMode = "Classic"
end)
Section:NewButton("First Person Once","Only Changes Into First Person Once",function()
    game.Players.LocalPlayer.CameraMode = "LockFirstPerson"
end)
--End
--Character tab
    local Tab = Window:NewTab("Character")
    local Section = Tab:NewSection("Player") 
    Section:NewSlider("WalkSpeed", "", 500, 16, function(v) 
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
    Section:NewSlider("JumpPower", "", 250, 50, function(v) 
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
    Section:NewToggle("Infinite Jump", "A simple Infinite Jump script.", function(state)
        if state then
    _G.infinjump = true
    local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()
    Mouse.KeyDown:connect(function(k)
    if _G.infinjump then
    if k:byte() == 32 then
    Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    Humanoid:ChangeState("Jumping")
    wait(0.1)
    Humanoid:ChangeState("Seated")
    end
    end
    end)
    local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()
        else
    if _G.infinjump == true then
    _G.infinjump = false
    else
    _G.infinjump = true
    end
    end
    end)    
    Section:NewSlider("FieldOfView", "", 120, 70, function(v) 
        game.Workspace.CurrentCamera.FieldOfView = v
    end)
    Section:NewSlider("HipHeight", "", 100, 2, function(v) 
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = v
    end)
        Section:NewToggle("Noclip", "", function(state)
            if state then
                _G.conn = game:GetService("RunService").Stepped:Connect(function()
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.Anchored = false    
                        end
                    end
                 end)
                 -- _G.conn:Disconnect() this is the line to disable only used for the else statement
        else
            _G.conn:Disconnect()
        end
        end)
        Section:NewToggle("Anchor)", "", function(state)
            if state then
            game.Players.LocalPlayer.Character.Head.Anchored = true
            game.Players.LocalPlayer.Character.Torso.Anchored = true
            game.Players.LocalPlayer.Character["Left Arm"].Anchored = true
            game.Players.LocalPlayer.Character["Right Arm"].Anchored = true
            game.Players.LocalPlayer.Character["Left Leg"].Anchored = true
            game.Players.LocalPlayer.Character["Right Leg"].Anchored = true
        else
            game.Players.LocalPlayer.Character.Head.Anchored = false
            game.Players.LocalPlayer.Character.Torso.Anchored = false
            game.Players.LocalPlayer.Character["Left Arm"].Anchored = false
            game.Players.LocalPlayer.Character["Right Arm"].Anchored = false
            game.Players.LocalPlayer.Character["Left Leg"].Anchored = false
            game.Players.LocalPlayer.Character["Right Leg"].Anchored = false
        end
        end)
    local Section = Tab:NewSection("Bhop")
    Section:NewToggle("Bhop (Auto)", "ToggleInfo", function(state)
        if state then
            _G.BHOPENABLED = true
            game.Workspace.Gravity = 120
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 60
            local LocalPlayer = game:GetService("Players").LocalPlayer
            local Character = LocalPlayer.Character
            while _G.BHOPENABLED and wait() do
            Character.Humanoid.Jump = true
            end    
        else
            _G.BHOPENABLED = false
            game.Workspace.Gravity = 196.1999969482422
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            local LocalPlayer = game:GetService("Players").LocalPlayer
            local Character = LocalPlayer.Character
            while _G.BHOPENABLED and wait() do
            Character.Humanoid.Jump = true
            end 
        end
    end)
    Section:NewToggle("Bhop (Manual)", "ToggleInfo", function(state)
        if state then
            _G.BHOPENABLED = true
            game.Workspace.Gravity = 120
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 60
            local LocalPlayer = game:GetService("Players").LocalPlayer
            local Character = LocalPlayer.Character
            while _G.BHOPENABLED and wait() do
            end    
        else
            _G.BHOPENABLED = false
            game.Workspace.Gravity = 196.1999969482422
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            local LocalPlayer = game:GetService("Players").LocalPlayer
            local Character = LocalPlayer.Character
            while _G.BHOPENABLED and wait() do
            end 
        end
    end)
    Section:NewButton("Force Reset", "", function()
        local Humanoid = game.Players.LocalPlayer.Character["Humanoid"]
    Humanoid:Destroy()
    end)
    --End
    --Visuals
    local Tab = Window:NewTab("Visuals")
    local Section = Tab:NewSection("Visual")
    Section:NewSlider("Time", "", 24, 1, function(v) 
        game.Lighting.ClockTime = v
    end)
--End
--Codes
local Tab = Window:NewTab("Codes")
local Section  = Tab:NewSection("Code Stuff")
Section:NewButton("Redeem All Hidden Codes","Redeems All Twitter Codes",function()
    code = {[1] = "TwitterCode",[2] = "Redux"}
    game:GetService("ReplicatedStorage").ProjectGemma.Remotes.rFunc:InvokeServer(unpack(code))  
    code = {[1] = "TwitterCode",[2] = "Spleef"}
    game:GetService("ReplicatedStorage").ProjectGemma.Remotes.rFunc:InvokeServer(unpack(code))  
    code = {[1] = "TwitterCode",[2] = "Acrobat"}
    game:GetService("ReplicatedStorage").ProjectGemma.Remotes.rFunc:InvokeServer(unpack(code))  
    code = {[1] = "TwitterCode",[2] = "Supercomputer"}
    game:GetService("ReplicatedStorage").ProjectGemma.Remotes.rFunc:InvokeServer(unpack(code))  
    code = {[1] = "TwitterCode",[2] = "Beast"}
    game:GetService("ReplicatedStorage").ProjectGemma.Remotes.rFunc:InvokeServer(unpack(code)) 
end)
Section:NewButton("Redeem Redux Code","Redeems Redux Twitter Code",function()
    code = {[1] = "TwitterCode",[2] = "Redux"}
    game:GetService("ReplicatedStorage").ProjectGemma.Remotes.rFunc:InvokeServer(unpack(code))  
end)
Section:NewButton("Redeem Spleef Code","Redeems Spleef Twitter Code",function()
    code = {[1] = "TwitterCode",[2] = "Spleef"}
    game:GetService("ReplicatedStorage").ProjectGemma.Remotes.rFunc:InvokeServer(unpack(code))  
end)
Section:NewButton("Redeem Acrobat Code","Redeems Acrobat Twitter Code",function()
    code = {[1] = "TwitterCode",[2] = "Acrobat"}
    game:GetService("ReplicatedStorage").ProjectGemma.Remotes.rFunc:InvokeServer(unpack(code))  
end)
Section:NewButton("Redeem Supercomputer Code","Redeems Supercomputer Twitter Code",function()
    code = {[1] = "TwitterCode",[2] = "Supercomputer"}
    game:GetService("ReplicatedStorage").ProjectGemma.Remotes.rFunc:InvokeServer(unpack(code))  
end)
Section:NewButton("Redeem Beast Code","Redeems Beast Twitter Code",function()
    code = {[1] = "TwitterCode",[2] = "Beast"}
    game:GetService("ReplicatedStorage").ProjectGemma.Remotes.rFunc:InvokeServer(unpack(code))  
end)
--MainTeleports
--Used Tween As Teleport Because Why Not You Can Change It To Just CFrame
local Tab = Window:NewTab("Main Teleports")
local Section = Tab:NewSection("Teleports")
Section:NewButton("Teleport To Hideen Code #1 | Redux","Teleports To Hideen Code #1",function()
    local TweenS = game:GetService("TweenService")
    local tween = TweenS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0), {CFrame = CFrame.new(-168.831909, 84.0468979, 226.733261, 0.330325186, -0.0884774327, 0.939711154, 0.258821189, 0.965925276, -3.46675515e-05, -0.907687724, 0.243228614, 0.341969252)})
tween:Play()
end)
Section:NewButton("Teleport To Hideen Code #2 | Spleef","Teleports To Hideen Code #2",function()
    local TweenS = game:GetService("TweenService")
    local tween = TweenS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0), {CFrame = CFrame.new(-127.32962, 19.1205463, -103.611862, -0.93968749, 0.34203434, -1.81794167e-06, 1.81794167e-06, 1.02519989e-05, 1, 0.34203434, 0.93968749, -1.03712082e-05)})
tween:Play()
end)
Section:NewButton("Teleport To Hideen Code #3 | Acrobat","Teleports To Hideen Code #3",function()
    local TweenS = game:GetService("TweenService")
    local tween = TweenS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0), {CFrame = CFrame.new(-179.182968, 51.9299545, 73.7272263, 0.0830694437, -0.026236698, 0.996198297, 0.300723135, 0.95371151, 4.14997339e-05, -0.950086832, 0.299576402, 0.0871142745)})
    tween:Play()
end)
Section:NewButton("Teleport To Hideen Code #4 | Supercomputer","Teleports To Hideen Code #4",function()
    local TweenS = game:GetService("TweenService")
    local tween = TweenS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0), {CFrame = CFrame.new(-13.9808741, 61.7971573, 98.9796829, 0.172945321, -0.0150992535, 0.984815717, 0.0871652216, 0.996193886, -3.35425138e-05, -0.981066823, 0.0858474746, 0.173603237)})
    tween:Play()
end)
    Section:NewButton("Teleport To Hideen Code #5 | Beast","Teleports To Hideen Code #5",function()
    local TweenS = game:GetService("TweenService")
    local tween = TweenS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0), {CFrame = CFrame.new(-109.296608, 51.8128738, 55.8400421, 1.2755394e-05, 1.66893005e-06, -0.99999994, -0.258770198, 0.965938926, -1.66893005e-06, 0.965938866, 0.258770198, 1.2755394e-05)})
    tween:Play()
end)
local Tab = Window:NewTab("Optional Teleports")
local Section = Tab:NewSection("Teleports2")
Section:NewButton("Teleport To Lobby","Teleports To Main Lobby",function()
    local lp = game.Players.LocalPlayer
    local HumRoot = lp.Character.HumanoidRootPart    
    HumRoot.CFrame = CFrame.new(-112.159103, 21.3964939, 79.2798462, -1, -1.99374561e-08, -3.11844051e-05, -1.99391721e-08, 1, 5.50364376e-08, 3.11844051e-05, 5.50370594e-08, -1)
end)
Section:NewToggle("Loop Teleport To Lobby", "Loop Stay At Lobby", function(loop)
    local lp = game.Players.LocalPlayer
    local c = lp.Character
    HumRoot = lp.Character.HumanoidRootPart
    getgenv().LoopLobby = nil
    if loop then
    LoopLobby = true 
    while LoopLobby == true do 
HumRoot.CFrame = CFrame.new(-112.159103, 21.3964939, 79.2798462, -1, -1.99374561e-08, -3.11844051e-05, -1.99391721e-08, 1, 5.50364376e-08, 3.11844051e-05, 5.50370594e-08, -1)
wait()  
end
else
LoopLobby = false
    end
end)
--Credits
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("creds")
Section:NewButton("Everything :3 | noketchupjustrice#3666","",function()
        setclipboard("noketchupjustrice#3666")
    end)
--Settings tab
local Tab = Window:NewTab("Settings")
local Section = Tab:NewSection("UI Settings")
Section:NewKeybind("UI Keybind","",Enum.KeyCode.LeftControl,function()
        Library:ToggleUI()
    end)
--End
end
