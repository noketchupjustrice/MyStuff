-- Minified for storage or whatever
local b = loadstring(game:HttpGet(("https://raw.githubusercontent.com/noketchupjustrice/MyStuff/main/HatStuff/Noti.lua")))()
local c, d, e, f = Vector3.new, CFrame.new, table.insert, table.remove
local f = game:GetService("RunService")
local g = game:GetService("Players")
local g = g.LocalPlayer
local h = g.Character
local i = h and h:FindFirstChild("HumanoidRootPart")
local f = f.RenderStepped
local j, k, l = task.wait, task.delay, task.spawn
local m = {}
do
    m.RespawnConnection =
        g.CharacterAdded:Connect(
        function(b)
            h = b
            i = b:WaitForChild("HumanoidRootPart", 3)
        end
    )
    m.BlockifyHats = true
    m.DisableFlicker = false
    m.ShowRoots = false
    m.NetIntensity = 80
    m.CustomNet = nil
    local g = {}
    local n = {}
    local o = true
    local p = {}
    do
        p.__index = function(b, c)
            if (c == "CFrame") then
                return rawget(b, "root")[c]
            end
            return rawget(b, c)
        end
        p.__newindex = function(b, c, d)
            if (c == "CFrame") then
                rawget(b, "root")["CFrame"] = d
                return
            end
            rawset(b, c, d)
        end
    end
    function m.GetHat_Internal()
        local b = h:FindFirstChildOfClass("Accessory")
        local d = b and b.Handle
        if (not d) then
            return nil
        end
        local f = Instance.new("Part")
        f.Transparency = 1
        f.Anchored = true
        f.CanTouch = false
        f.CanCollide = false
        f.Size = c(1, 1, 1)
        f.Parent = workspace
        e(g, f)
        local e = {}
        e[2] = d.Size
        local g = d:FindFirstChildOfClass("SpecialMesh") or d:FindFirstChildOfClass("Mesh")
        if (m.BlockifyHats) and g then
            e[1] = g.MeshId:match("%d%d%d%d+")
            g:Destroy()
        end
        if (not g) then
            if (d.ClassName == "MeshPart") then
                e[1] = d.MeshId:match("%d%d%d%d+")
            end
        end
        if (m.DisableFlicker) then
            f.Transparency = m.ShowRoots and 0.5 or 0
            d.Transparency = 1
            f.Size = e[2]
            f.BottomSurface = "Smooth"
            f.TopSurface = "Smooth"
        else
            if (m.ShowRoots) then
                f.Transparency = .5
                f.Size = c(0.8, 0.8, 0.8)
                f.Color = Color3.new(0, 0, 1)
            end
        end
        local c = d:FindFirstChildOfClass("Weld")
        if (c) then
            c:Destroy()
        end
        d.Parent = f
        b:Destroy()
        return d, f, e
    end
    function m:NewHat()
        local b = setmetatable({}, p)
        local c, d, f = m.GetHat_Internal()
        if (not c) then
            return nil
        end
        rawset(b, "real", c)
        rawset(b, "root", d)
        rawset(b, "HatId", f[1])
        rawset(b, "HatSize", f[2])
        e(n, b)
        return b
    end
    function m:ClearHats()
        for b, c in ipairs(n) do
            rawget(c, "root"):Destroy()
            rawget(c, "real"):Destroy()
            n[b] = nil
        end
        n = nil
        for b, b in ipairs(g) do
            b:Destroy()
        end
        g = nil
    end
    function m:Exit()
        m:ClearHats()
        m.RespawnConnection:Disconnect()
        o = false
        b:message({Title = "Hat Lib unloaded :3", Description = "Bai! :3", Length = 2, Icon = 6023426926})
        k(
            3,
            function()
                b = nil
            end
        )
    end
    function m:GetHatCount()
        return #n
    end
    function m:GetHatTable()
        return n
    end
    l(
        function()
            j(.1)
            if (m.CustomNet) then
                while true do
                    if (not o) then
                        return
                    end
                    for b, b in ipairs(n) do
                        rawget(b, "real")["CFrame"] = b.CFrame
                    end
                    f:Wait(f)
                    if (not o) then
                        return
                    end
                    local b = i.Position
                    local b = m.CustomNet
                    for c, c in ipairs(n) do
                        rawget(c, "real")["Velocity"] = b
                    end
                    f:Wait(f)
                end
            else
                while true do
                    if (not o) then
                        return
                    end
                    for b, b in ipairs(n) do
                        rawget(b, "real")["CFrame"] = b.CFrame
                    end
                    f:Wait(f)
                    if (not o) then
                        return
                    end
                    local b = i.Position
                    local c = m.NetIntensity
                    for e, e in ipairs(n) do
                        rawget(e, "real")["Velocity"] = d(e.CFrame.Position, b).LookVector * c
                    end
                    f:Wait(f)
                end
            end
        end
    )
end
b:message(
    {
        Title = "Hat Lib loaded :3",
        Description = "UwU",
        Length = 3,
        Accept = {Text = "Ok"},
        Icon = 6023426926
    }
)
k(
    3.25,
    function()
        local c = game:GetService("Stats").FrameRateManager.RenderAverage:GetValue()
        if (c > 8) then
            b:notify(
                {
                    Title = "Warning",
                    Description = "Your FPS seems to be low (<144).\nStability issues with the net may occur",
                    Length = 6,
                    Accept = {
                        Text = "Ok, set cap to 144",
                        Callback = function()
                            local c = (setfpscap or set_fps_cap)
                            if (c) then
                                c(144)
                                b:notify(
                                    {
                                        Title = "Changed cap successfully",
                                        Description = "Doesn't work? Check console for more info",
                                        Length = 3
                                    }
                                )
                                if (identifyexecutor():match("Synapse")) then
                                else
                                    print("Make sure your exploit's FPS unlocker option is enabled!")
                                end
                            else
                                b:notif(
                                    {
                                        Title = "Something went wrong",
                                        Description = "Missing function setfpscap / set_fps_cap\n",
                                        Length = 3
                                    }
                                )
                                print("It looks like your exploit is missing a valid FPS unlocker function")
                            end
                        end
                    },
                    Dismiss = {Text = "Ok"}
                }
            )
        end
    end
)
return m
