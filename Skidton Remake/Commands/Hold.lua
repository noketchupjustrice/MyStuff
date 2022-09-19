--noketchupjustrice#3666
--READ | The Bang Command Used The Same Method Of Attaching To Players, But This Is My Version
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
local Target = GetPlayer("hel") -- Target Name Here (Can Be Shortened)
game:GetService("Players").LocalPlayer.Character.Humanoid:UnequipTools() -- Unequip Tools Before Executing Because Some People Are Dumb
local OldCFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame -- Saves Our Old CFrame Position
local ClonedHumanoid = game:GetService("Players").LocalPlayer.Character.Humanoid:Clone() -- Clones Humanoid
ClonedHumanoid.Parent = game:GetService("Players").LocalPlayer.Character -- Parents That Cloned Humanoid To Our Character
game:GetService("Players").LocalPlayer.Character.Humanoid:Destroy() -- Destorys Our Old Humanoid
local Tool = game:GetService("Players").LocalPlayer.Backpack:FindFirstChildOfClass("Tool") -- Defining Our Tool (Balls)
Tool.Parent = game:GetService("Players").LocalPlayer.Character -- Parenting The Tool To Our Character
firetouchinterest(Tool.Handle, Target.Character["Head"], 0) --Attaching To Our Target
game:GetService("Players").LocalPlayer.CharacterAdded:Wait() -- Wait Until Our Character Respawns
game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart") -- Wait For The Child HumanoidRootPart Because We Need That To Go Back To Our Saved Position "OldCFrame"
game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(OldCFrame) -- Once It Has Found Our RootPart Then Teleport
game:GetService("Players").LocalPlayer.Character:WaitForChild("ForceField"):Destroy() -- Optional But Destroys The ForceField When You Respawn To Make It Fancy You Can UnComment This If You Wish
