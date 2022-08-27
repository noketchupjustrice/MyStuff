--Open source?!?!?!11 omg yay time to skid!1!!1!1
--Left it open because the game is bad anyways and so is the dev
while not game:IsLoaded() or not game:GetService("CoreGui") or not game:GetService("Players").LocalPlayer or not game:GetService("Players").LocalPlayer.PlayerGui do wait() end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/x114/User-Interface-s/main/Splixuiedited"))()
local NotiLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/noketchupjustrice/MyStuff/main/HatStuff/Noti.lua")))()
function Notify(Title, Description)
    NotiLib:message({Title = Title, Description = Description, Length = 1.5, Icon = 6023426926})
    return m
end

local start = os.clock()
local format = string.format
local date_table = os.date("*t")
local monthTable = {
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
}

--//Anti Afk\\--
for i, v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
    v:Disable()
end	
--//\\--

--//Library\\-- 
local Window = Library:New({Name = "Build A Boat For Treasure | "..monthTable[date_table.month].." "..date_table.day..", "..date_table.year, Accent = Color3.fromRGB(165, 42, 42)})
local MainTab = Window:Page({Name = "Main"})
local ExtrasTab = Window:Page({Name = "Extras"})
local MainSection = MainTab:Section({Name = "Main", Side = "left"})
local MiscSection = MainTab:Section({Name = "Misc", Side = "right"})
local ServerSection = MainTab:Section({Name = "Server", Side = "right"})
local SettingsSection = MainTab:Section({Name = "Settings", Side = "right"})
local ExtrasSection = ExtrasTab:Section({Name = "Teams", Side = "left"})
local QuestsSection = ExtrasTab:Section({Name = "Quests", Side = "right"})
--//\\--
--//Main\\--
MainSection:Slider({Name = "Character WalkSpeed",min = 1,max = 400,def = 0,decimals = 0.01,Pointer = "WalkSpeedPointer"})

getgenv().UseWalkSpeed = false 
MainSection:Toggle({Name = "Use WalkSpeed", Default = false,Pointer = "UseWalkSpeedPointer",callback = function(state)
    if state then
        getgenv().UseWalkSpeed = true
        while getgenv().UseWalkSpeed == true do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Library.pointers.WalkSpeedPointer.current
            game:GetService("RunService").Heartbeat:Wait()
        end
    else
        getgenv().UseWalkSpeed = false
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end           
end})

MainSection:Slider({Name = "Character JumpPower",min = 50,max = 800,def = 0,decimals = 0.01,Pointer = "JumpPowerPointer"})

getgenv().UseJumpPower = false 
MainSection:Toggle({Name = "Use JumpPower", Default = false,Pointer = "UseWalkSpeedPointer",callback = function(state)
    if state then
        getgenv().UseJumpPower = true
        while getgenv().UseJumpPower == true do
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Library.pointers.JumpPowerPointer.current
            game:GetService("RunService").Heartbeat:Wait()
        end
    else
        getgenv().UseJumpPower = false
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end       
end})

MainSection:Label({Name = "Game Stuff"})

local Obstacles = {}
MainSection:Toggle({Name = "Remove Obstacles", Default = false,Pointer = "Farming",callback = function(state)
    if state then
        for i, v in pairs(game:GetService("Workspace").BoatStages.OtherStages:GetDescendants()) do
            if v:IsA "Model" or v:IsA "Part" or v:IsA "WedgePart" or v:IsA "UnionOperation" or v:IsA "ParticleEmitter" then
                if not game.Players:GetPlayerFromCharacter(v) then
                    Obstacles[#Obstacles + 1] = v
                end
            else
                if v.ClassName == "Part" then
                    Obstacles[#Obstacles + 1] = v
                end
            end
        end
        for i, v in next, Obstacles do
            v.Parent = game.Lighting
        end
    else
        for i, v in next, Obstacles do
            v.Parent = workspace
        end
    end    
end})

function AutoFarmLol()
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-51.1823959, 80.6168747, -536.437805)
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(30, Enum.EasingStyle.Linear)
    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),tweenInfo,{CFrame = CFrame.new(-60.5737877, 53.9498825, 8666.35059)})
    tween:Play()
    wait(30)
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),tweenInfo,{CFrame = CFrame.new(-55.5486526, -360.063782, 9489.0498)})
    tween:Play()
end

MainSection:Toggle({Name = "Auto Farm", Default = false,Pointer = "Farming",callback = function(state)
    if state then
        getgenv().Autofarm = true
        game:GetService("RunService").Stepped:connect(
            function()
                if getgenv().Autofarm then
                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(11)
                end
            end
        )
        if getgenv().Autofarm then
            AutoFarmLol()
        end
    
        if not getgenv().Autofarm then
            game.Players.LocalPlayer.Character.Head:Destroy()
        end
    
        game.Players.LocalPlayer.CharacterAdded:Connect(
            function()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character
                wait(3)
                if getgenv().Autofarm then
                    AutoFarmLol()
                end
            end
        )
    else
        getgenv().Autofarm = false
    end    
end})

getgenv().Godmode = false 
MainSection:Toggle({Name = "Godmode (Water)",Default = false,Pointer = "Godmode",callback = function(state)
    if state then
        getgenv().Godmode = true
        game:GetService("RunService").Stepped:connect(
            function()
                pcall(
                    function()
                        if getgenv().Godmode == true and game.Players.LocalPlayer.Character:FindFirstChild("WaterDetector") then
                            game.Players.LocalPlayer.Character.WaterDetector:Destroy()
                        end
                    end
                )
            end
        )
    else
        getgenv().Godmode = false
    end       
end})

MainSection:Label({Name = "Chest Stuff"})

MainSection:Slider({Name = "Auto Chest Open Delay",min = 0.1,max = 10,def = 0,decimals = 0.01,Pointer = "AutoOpenChestDelay"})

getgenv().AutoOpenCommon = false 
MainSection:Toggle({Name = "Auto Open Common Chest",Default = false,Pointer = "AutoChestPointer",callback = function(state)
    if state then
        getgenv().AutoOpenCommon = true
        while AutoOpenCommon == true do
            local args = {[1] = "Common Chest", [2] = 1}
            workspace.ItemBoughtFromShop:InvokeServer(unpack(args))
            wait(Library.pointers.AutoOpenChestDelay.current)
        end
    else
        getgenv().AutoOpenCommon = false
    end          
end})

getgenv().AutoOpenUncommon = false 
MainSection:Toggle({Name = "Auto Open Uncommon Chest",Default = false,Pointer = "AutoChestPointer",callback = function(state)
    if state then
        getgenv().AutoOpenUncommon = true
        while AutoOpenUncommon == true do
            local args = {[1] = "Uncommon Chest", [2] = 1}
            workspace.ItemBoughtFromShop:InvokeServer(unpack(args))
            wait(Library.pointers.AutoOpenChestDelay.current)
        end
    else
        getgenv().AutoOpenUncommon = false
    end          
end})

getgenv().AutoOpenRare = false 
MainSection:Toggle({Name = "Auto Open Rare Chest",Default = false,Pointer = "AutoChestPointer",callback = function(state)
    if state then
        getgenv().AutoOpenRare = true
        while AutoOpenRare == true do
            local args = {[1] = "Rare Chest", [2] = 1}
            workspace.ItemBoughtFromShop:InvokeServer(unpack(args))
            wait(Library.pointers.AutoOpenChestDelay.current)
        end
    else
        getgenv().AutoOpenRare = false
    end           
end})

getgenv().AutoOpenEpic = false 
MainSection:Toggle({Name = "Auto Open Epic Chest",Default = false,Pointer = "AutoChestPointer",callback = function(state)
    if state then
        getgenv().AutoOpenEpic = true
        while AutoOpenEpic == true do
            local args = {[1] = "Epic Chest", [2] = 1}
            workspace.ItemBoughtFromShop:InvokeServer(unpack(args))
            wait(Library.pointers.AutoOpenChestDelay.current)
        end
    else
        getgenv().AutoOpenEpic = false
    end          
end})

getgenv().AutoOpenLegendary = false 
MainSection:Toggle({Name = "Auto Open Legendary Chest",Default = false,Pointer = "AutoChestPointer",callback = function(state)
    if state then
        getgenv().AutoOpenLegendary = true
        while AutoOpenLegendary == true do
            local args = {[1] = "Legendary Chest", [2] = 1}
            workspace.ItemBoughtFromShop:InvokeServer(unpack(args))
            wait(Library.pointers.AutoOpenChestDelay.current)
        end
    else
        getgenv().AutoOpenLegendary = false
    end           
end})

MainSection:Label({Name = "Teleport Stuff"})

--Pain In The Ass Getting All The CFrames
local function TpChar(CFrameToGoto)
    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameToGoto)
    game.Players.LocalPlayer.Character.Head.Anchored = true 
    wait(0.1)
    game.Players.LocalPlayer.Character.Head.Anchored = false
    for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do 
        if v:IsA("BasePart") then 
            v.Velocity = Vector3.new()
        end
    end
end

MainSection:Button({name = "Black Team",callback = function()
    TpChar(CFrame.new(-558.065674, -10, -73.1067429, 0, 0, 1, 0, 1, -0, -1, 0, 0))
end})

MainSection:Button({name = "Blue Team",callback = function()
    TpChar(CFrame.new(450.934723, -10, 296.89328, 0, 0, -1, 0, 1, 0, 1, 0, 0))
end})

MainSection:Button({name = "Green Team",callback = function()
    TpChar(CFrame.new(-558.065674, -10, 278.89325, 0, 0, 1, 0, 1, -0, -1, 0, 0))
end})

MainSection:Button({name = "Magenta Team",callback = function()
    TpChar(CFrame.new(450.934723, -10, 643.893311, 0, 0, -1, 0, 1, 0, 1, 0, 0))
end})

MainSection:Button({name = "Red Team",callback = function()
    TpChar(CFrame.new(450.934723, -10, -66.60672, 0, 0, -1, 0, 1, 0, 1, 0, 0))
end})

MainSection:Button({name = "White Team",callback = function()
    TpChar(CFrame.new(-53.1776123, -10, -574.608276, 1, 0, 0, 0, 1, 0, 0, 0, 1))
end})

MainSection:Button({name = "Yellow Team",callback = function()
    TpChar(CFrame.new(-558.065674, -10, 643.89325, 0, 0, 1, 0, 1, -0, -1, 0, 0))
end})

--//\\--

--//Misc\\--

local function ChangeCharacter(Char)
    workspace.ChangeCharacter:FireServer(Char)
end    

MiscSection:Button({name = "Change Into A Fox",callback = function()
    ChangeCharacter("FoxCharacter")
end})

MiscSection:Button({name = "Change Into A Penguin",callback = function()
    ChangeCharacter("PenguinCharacter")
end})

MiscSection:Button({name = "Change Into A Chicken",callback = function()
    ChangeCharacter("ChickenCharacter")
end})

--//Server\\--

ServerSection:Button({name = "Rejoin",callback = function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
end})

ServerSection:Button({name = "ServerHop",callback = function()
    local s = {}
    for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
        if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
            s[#s+1] = v.id
        end
    end
    if #s > 0 then
    	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, s[math.random(1, #s)])
    end
end})
ServerSection:Button({name = "JoinLargestServer",callback = function()
    local Amazing = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Kozenomenon/RBX_Pub/main/Misc/Rejoin_Preferred_Server.lua"))
    Amazing({SizeSort="desc",MinPlayers=0,MaxPlayers=0,ExcludeFull=true,ExcludeSame=true,MinFps=55,MaxPing=190,FpsSortWeight=1,PingSortWeight=1,SizeSortWeight=5,PrintVerbose=false,PrintPrefixTime=false,PrintUseConsoleWindow=false})
end})
--//\\--

--//Settings\\--
SettingsSection:Button({name = "Unload Script",callback = function()
    pcall(function()
        Library.pointers.AutoTypePointer = false
        Window:Unload()
    end)
end})

SettingsSection:Keybind({Name = "Open/Close", Default = Enum.KeyCode.LeftAlt, KeybindName = "UiBind", Mode = "Toggle",callback = function(Val1)
    Window:Fade()
end})

--//Extras\\--
ExtrasSection:Label({Name = "Team Stuff"})

local function SwitchTeam(Team)
    workspace.ChangeTeam:FireServer(game:GetService("Teams")[Team]) 
end

ExtrasSection:Button({name = "Swtich To Black Team",callback = function()
    SwitchTeam("black")
end})

ExtrasSection:Button({name = "Swtich To Blue Team",callback = function()
    SwitchTeam("blue")
end})

ExtrasSection:Button({name = "Swtich To Green Team",callback = function()
    SwitchTeam("green")
end})

ExtrasSection:Button({name = "Swtich To Magenta Team",callback = function()
    SwitchTeam("magenta")
end})

ExtrasSection:Button({name = "Swtich To Red Team",callback = function()
    SwitchTeam("red")
end})

ExtrasSection:Button({name = "Swtich To White Team",callback = function()
    SwitchTeam("white")
end})

ExtrasSection:Button({name = "Swtich To Yellow Team",callback = function()
    SwitchTeam("yellow")
end})

ExtrasSection:Label({Name = "Extra Misc"})

ExtrasSection:Toggle({Name = "Enable PvP", Default = false,Pointer = "EnablePvPPointer",callback = function(state)
    if state then
        game.Players.LocalPlayer.Settings.PVP.Value = true
    else
        game.Players.LocalPlayer.Settings.PVP.Value = false
    end           
end})

ExtrasSection:Button({name = "Pop All Balloons",callback = function()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "BalloonBlock" then
            fireclickdetector(v.PPart.ClickDetector)
        end
    end
end})

ExtrasSection:Button({name = "Launch All Fireworks",callback = function()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "Firework"then
            fireclickdetector(v.Rocket.ClickDetector)
        end
        if v.Name == "FireworkA"then
            fireclickdetector(v.ClickDetector)
        end
        if v.Name == "FireworkB"then
            fireclickdetector(v.ClickDetector)
        end
        if v.Name == "FireworkC"then
            fireclickdetector(v.ClickDetector)
        end        
    end
end})

ExtrasSection:Button({name = "Activate All Parachutes",callback = function()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "ParachuteBlock"then
            fireclickdetector(v.PPart.ClickDetector)
        end     
    end
end})

ExtrasSection:Button({name = "Activate All Shield Generators",callback = function()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "ShieldGenerator"then
            fireclickdetector(v.PPart.ClickDetector)
        end     
    end
end})

ExtrasSection:Button({name = "Clear Blocks",callback = function()
    workspace.ClearAllPlayersBoatParts:FireServer()
end})

ExtrasSection:Label({Name = "Boat Mod Stuff"})

ExtrasSection:Slider({Name = "Wheel Max Speed Mod",min = 1,max = 500,def = 0,decimals = 0.01,Pointer = "BoatModPointer"})

getgenv().WheelMod = false 
ExtrasSection:Toggle({Name = "Use Mod", Default = false,Pointer = "UseWalkSpeedPointer",callback = function(state)
    if state then
        getgenv().WheelMod = true
        while getgenv().WheelMod == true do
            local AllTiresOwned = {}
            for i, v in pairs(game.Workspace:GetDescendants()) do
                if v.Name == "FrontWheel" or v.Name == "BackWheel" and v.Tag.Value == game.Players.LocalPlayer.Name then
                    v.MaxSpeed.Value = Library.pointers.BoatModPointer.current
                end
            end
            wait(1.5)
        end
    else
        getgenv().WheelMod = false
        for i, v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "FrontWheel" or v.Name == "BackWheel" and v.Tag.Value == game.Players.LocalPlayer.Name then
                v.MaxSpeed.Value = 50
            end
        end
    end              
end})

--//\\--

--//Quests\\--

local function StartQuest(Quest)
    workspace.QuestMakerEvent:FireServer(Quest)
end

local function StopVel()
    for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Velocity, v.RotVelocity = Vector3.new(), Vector3.new()
        end
    end
end

QuestsSection:Label({Name = "You Must Be On The White Team"})

QuestsSection:Button({name = "Auto Complete Cloud Quest",callback = function()
    local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    StartQuest(1)
    wait(0.5)
    local CloudCFrame = game:GetService("Workspace").WhiteZone.Quest.Cloud.Part1.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CloudCFrame
    wait(1)
    TpChar(OldPos)
    StopVel()
end})

QuestsSection:Button({name = "Auto Complete Target Quest",callback = function()
    local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    StartQuest(2)
    wait(0.5)
    local TargetCFrame = CFrame.new(-53.4996872, 141.01004, -222.999878, 0, 0, -1, -1, 0, 0, 0, 1, 0)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetCFrame
    wait(1)
    TpChar(OldPos)
    StopVel()
end})

QuestsSection:Label({Name = "Soccer Quest Helps Move The Ball"})

QuestsSection:Button({name = "Help Complete Soccer Quest",callback = function()
    StartQuest(8)
    wait(0.5)
    local TargetCFrame = CFrame.new(2.64169645, -9.89999676, -371.876831, 0.0691231191, -2.89827131e-08, 0.997608125, 4.85259619e-08, 1, 2.56898947e-08, -0.997608125, 4.66341277e-08, 0.0691231191)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetCFrame
    StopVel()
    local SoccerBall = game:GetService("Workspace").WhiteZone.Quest.Soccer1.SoccerBall
    SoccerBall.Transparency = 0.5
    SoccerBall.CanCollide = false 
    SoccerBall.Mass = 0
    SoccerBall.Massless = true
end})

QuestsSection:Button({name = "Auto Complete Ramp Quest",callback = function()
    local VIM = game:GetService("VirtualInputManager")
    local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local SafeSpotPos = CFrame.new(-50.2449646, -9.89999676, -491.669739, -0.999822259, 9.03432351e-09, 0.0188545007, 1.03337134e-08, 1, 6.88192543e-08, -0.0188545007, 6.90018567e-08, -0.999822259)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SafeSpotPos
    StartQuest(3)
    wait(0.5)
    local CircleCFrame = CFrame.new(-48.8051605, 57.6172562, -224.418381, -0.999980271, 4.80273987e-10, 0.00628201943, -4.25856572e-11, 1, -8.32310079e-08, -0.00628201943, -8.32296294e-08, -0.999980271)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CircleCFrame
    VIM:SendKeyEvent(true, Enum.KeyCode.W, false, nil)
    wait(1)
    VIM:SendKeyEvent(false, Enum.KeyCode.W, false, nil)
    TpChar(OldPos)
    StopVel()
end})

QuestsSection:Button({name = "Auto Complete Find Me Quest",callback = function()
    local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    StartQuest(4)
    wait(0.5)
    TpChar(game:GetService("Workspace").WhiteZone.Quest.Butter.PPart.CFrame)
    fireclickdetector(game:GetService("Workspace").WhiteZone.Quest.Butter.PPart.ClickDetector)
    wait(2.5)
    TpChar(game:GetService("Workspace").WhiteZone.Quest.Butter.PPart.CFrame)
    fireclickdetector(game:GetService("Workspace").WhiteZone.Quest.Butter.PPart.ClickDetector)
    wait(2.5)
    TpChar(game:GetService("Workspace").WhiteZone.Quest.Butter.PPart.CFrame)
    fireclickdetector(game:GetService("Workspace").WhiteZone.Quest.Butter.PPart.ClickDetector)
    wait(2.5)
    TpChar(game:GetService("Workspace").WhiteZone.Quest.Butter.PPart.CFrame)
    fireclickdetector(game:GetService("Workspace").WhiteZone.Quest.Butter.PPart.ClickDetector)
    wait(2.5)
    TpChar(game:GetService("Workspace").WhiteZone.Quest.Butter.PPart.CFrame)
    fireclickdetector(game:GetService("Workspace").WhiteZone.Quest.Butter.PPart.ClickDetector)
    wait()
    TpChar(OldPos)
end})
--//\\--
Window:Initialize()
Notify("Loaded",'Loaded Script In ' .. format('%.4f', tostring(os.clock() - start)) .. ' seconds',"")
wait(2)
Notify("Made by","noketchupjustrice#3666","okay")
