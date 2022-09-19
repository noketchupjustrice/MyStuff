--noketchupjustrice#3666 (759153158017515560) Credits To Me Because Im Cool
local function GetPlayer(Name) -- Function To Get Player (Ignore)
    Name = Name:lower():gsub("%s", "")
    for _, x in next, game:GetService("Players"):GetPlayers() do
        if x ~= game:GetService("Players").LocalPlayer then
            if x.Name:lower():match(Name) then
                return x
            elseif x.DisplayName:lower():match("^" .. Name) then
                return x
            end
        end
    end
end

local FastKill = true -- Delays The Kill A Bit Making It Look Fast
if FastKill then
    local ogChar = game.Players.LocalPlayer.Character
    game.Players.LocalPlayer.Character = Clone
    game.Players.LocalPlayer.Character = ogChar
    wait(game.Players.RespawnTime - 0.1)
end

local Target = GetPlayer("fawedawfawfawfwa") -- Target Name Here (Can Be Shortened)
game:GetService("Players").LocalPlayer.Character.Humanoid:UnequipTools() -- Unequip Tools Before Executing Because Some People Are Dumb
local OldCFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame -- Saves Our Old CFrame Position
local ClonedHumanoid = game:GetService("Players").LocalPlayer.Character.Humanoid:Clone() -- Clones Humanoid
ClonedHumanoid.Parent = game:GetService("Players").LocalPlayer.Character -- Parents That Cloned Humanoid To Our Character
game:GetService("Players").LocalPlayer.Character.Humanoid:Destroy() -- Destorys Our Old Humanoid
local Tool = game:GetService("Players").LocalPlayer.Backpack:FindFirstChildOfClass("Tool") -- Defining Our Tool (Balls)
Tool.Parent = game:GetService("Players").LocalPlayer.Character -- Parenting The Tool To Our Character
firetouchinterest(Tool.Handle, Target.Character["Head"], 0) --Attaching To Our Target
firetouchinterest(Tool.Handle, Target.Character["Head"], 1)
Tool.AncestryChanged:Wait() -- Wait Balls
game.Players.LocalPlayer.Character.Humanoid.Health = 0 -- Change Humanoid Health To 0
game.Players.LocalPlayer.Character = nil -- Making Our Character nil For The Kill
game:GetService("Players").LocalPlayer.CharacterAdded:Wait() -- Wait Until Our Character Respawns
game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart") -- Wait For The Child HumanoidRootPart Because We Need That To Go Back To Our Saved Position "OldCFrame"
game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(OldCFrame) -- Once It Has Found Our RootPart Then Teleport
game:GetService("Players").LocalPlayer.Character:WaitForChild("ForceField"):Destroy() -- Optional But Destroys The ForceField When You Respawn To Make It Fancy You Can UnComment This If You Wish
