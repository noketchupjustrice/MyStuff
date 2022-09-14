--mhm
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
local Window = Library:New({Name = "Impossible Glass Bridge Obby! (Squid Game) | "..monthTable[date_table.month].." "..date_table.day..", "..date_table.year, Accent = Color3.fromRGB(165, 42, 42)})
local MainTab = Window:Page({Name = "Main"})
local MainSection = MainTab:Section({Name = "Main", Side = "left"})
local MiscSection = MainTab:Section({Name = "Misc", Side = "right"})
local ServerSection = MainTab:Section({Name = "Server", Side = "right"})
local SettingsSection = MainTab:Section({Name = "Settings", Side = "right"})
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

MainSection:Button({name = "Force Reset",callback = function()
    game.Players.LocalPlayer.Character:Destroy()   
end})

MainSection:Label({Name = "Game Stuff"})

getgenv().AutoEnd = false
MainSection:Toggle({Name = "AutoFarm Money", Default = false,Pointer = "AFinishPointer",callback = function(state)
    if state then
        getgenv().AutoEnd = true
        while getgenv().AutoEnd == true do
            for i,v in pairs(game:GetService("Workspace")["Glass Bridge"].Finish["Money Pig"]:GetDescendants()) do 
                if v.Name == "MeshPart" and v:FindFirstChild('TouchInterest') then 
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
                end
            end
            wait(0.2)
        end
    else
        getgenv().AutoEnd = flase
        game.Players.LocalPlayer.Character:BreakJoints()
    end            
end})

local function TouchAllPads()
    for i,v in pairs(game:GetDescendants()) do 
        if v.Name == "2" or v.Name == "1" and v:FindFirstChild("TouchInterest") then 
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 1)
        end
    end
end

MainSection:Button({name = "TouchAllPads",callback = function()
    TouchAllPads()
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

--//\\--
Window:Initialize()
Notify("Loaded",'Loaded Script In ' .. format('%.4f', tostring(os.clock() - start)) .. ' seconds',"")
wait(2)
Notify("Made by","noketchupjustrice#3666","okay")
