-- Random One Forgot Where This Is From
local function a(b)
    if b:FindFirstChild("BodyPosition") then
        if not b:FindFirstChild("BodyVelocity") then
            local c = Instance.new("BodyVelocity", b)
            c.Velocity = Vector3.new(-26, 0, 0)
        end
        b.Velocity = Vector3.new(25.70, 0, 0)
    end
end
local function d(b)
    task.spawn(
        function()
            local e = b
            local f = Instance.new("BodyPosition", e)
            f.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
            f.P = 9e9
            f.Position = b.Position
            local g = Instance.new("BodyGyro", e)
            g.MaxTorque = Vector3.new(1 / 0, 1 / 0, 1 / 0)
            g.P = 9e9
            e.CanCollide = false
            e:BreakJoints()
            while true do
                a(e)
                game:GetService("RunService").Heartbeat:wait()
            end
        end
    )
end
local function h(b)
    if b:FindFirstChild("BodyPosition") then
        return b:FindFirstChild("BodyPosition")
    end
end
local function i()
    for j, k in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if k:IsA("Tool") then
            k.Parent = game.Players.LocalPlayer.Character
            d(k.Handle)
            k.Handle.BodyPosition.Position = k.Handle.Position + Vector3.new(5, 0, 0)
        end
    end
end
local function l()
    local m = {}
    local n = {}
    for j, k in pairs(game.Players:GetPlayers()) do
        if
            k ~= nil and k.Character and k ~= game.Players.LocalPlayer and
                k.Character:FindFirstChild("HumanoidRootPart") and
                k.Character:FindFirstChild("Humanoid")
         then
            table.insert(m, k)
        end
    end
    if m ~= n then
        return m[math.random(1, #m)].Character.HumanoidRootPart
    else
        return false
    end
end
for j, k in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if k:IsA("Tool") then
        k.Parent = game.Players.LocalPlayer.Character
    end
end
task.wait(0.5)
for j, k in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if k:IsA("Tool") then
        k.Parent = game.Players.LocalPlayer.Backpack
    end
end
task.wait(0.5)
for o, k in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if k.Name == "Right Arm" or k.Name == "RightHand" then
        k:Destroy()
    end
    task.wait()
    if k:IsA("Tool") then
        k.Handle.CanCollide = false
        task.wait()
    end
end
local p = game.Players.LocalPlayer
local q = p.Character
local r = 0
i()
task.spawn(
    function()
        while true do
            for o, k in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if k:IsA("Tool") then
                    k.Handle.RotVelocity = Vector3.new(9e9, 9e9, 9e9)
                end
            end
            game:GetService("RunService").Heartbeat:wait()
        end
    end
)
task.spawn(
    function()
        while true do
            for j, k in pairs(q:GetChildren()) do
                if k:IsA("Tool") and k:FindFirstChild("Handle") and k.Handle:FindFirstChild("BodyPosition") then
                    a(k.Handle)
                end
            end
            game:GetService("RunService").Heartbeat:wait()
        end
    end
)
task.spawn(
    function()
        while true do
            if l() ~= false then
                for j, k in pairs(q:GetChildren()) do
                    if k:IsA("Tool") and k:FindFirstChild("Handle") and k.Handle:FindFirstChild("BodyPosition") then
                        a(k.Handle)
                        local s = l()
                        local t = (q.HumanoidRootPart.Position - s.Position).Magnitude
                        if t < 375 then
                            h(k.Handle).Position =
                                s.Position + Vector3.new(0, math.sin(r / 10)) + s.Parent.Humanoid.MoveDirection
                            task.wait(.175)
                        end
                    end
                end
                r += 1
                game:GetService("RunService").Heartbeat:wait()
            end
        end
    end
)
