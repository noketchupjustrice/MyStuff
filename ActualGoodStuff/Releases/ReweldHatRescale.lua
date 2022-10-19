--Delete The Comments If Youd Like Theyre Just There To Explain Some Things And How This Works Plus Some Comparisons Otherwise Leave Them Here
-- Either First Or One Of The First To Discover This Back Months Ago Just Don't Want People Claiming This As Theirs :)
-- Gave This Script Or Concept Of How It Works And What You Can Do To Make It (You Know Who You Are.)

-- noketchupjustrice#3666 / fawedawfawfawfwa

--Comparison Between  Reweld Rescale - https://github.com/noketchupjustrice/MyStuff/blob/main/ActualGoodStuff/Releases/ReweldHatRescale.png | Normal Hat Rescale - https://github.com/noketchupjustrice/MyStuff/blob/main/ActualGoodStuff/Releases/NormalHatRescale.PNG

-- This Supports Any Rthro Hat, Shoulder, Neck, Front, Back, And Waist Accessorys That Are In Rhtro Bundles
--This Rescale Can Vary In Size Depending On The Mesh Of The Accessory

--Simply Wear Any Rthro Accessory And Execute It Will Automatically Rescale It For You

--Most Of The Rthro Hats That Go Onto The Characters Hands Have An Attachment Attached To The Hand
local Character = game:GetService("Players").LocalPlayer.Character
local Humanoid = Character:FindFirstChildOfClass("Humanoid")
for i, v in pairs(Character:GetChildren()) do
    if v:IsA("Accessory") then -- Checking For Accessorys
        for i, v in pairs(v.Handle:GetChildren()) do
            if v:IsA("Attachment") then -- Checking For The Attachment Which Is Connected To The Hand
                v:Destroy() -- Destroy The Attachment Meaning Next Time You Rescale It Will Act As A Hat Since It Has No Where To Be Attached
            end
        end
    end
end
local function Remove() -- Function To Destroy Original Size
    for i, v in pairs(Character:GetChildren()) do
        if v:IsA("Accessory") then -- Checking For Accessorys Again Noob
            v.Handle:WaitForChild("OriginalSize"):Destroy() -- Destroys Original Size Meaning Next Time A Humanoid Value Is Destroyed It's Size Will Increase
        end
    end
end
-- Loop To Go Through All The Humanoid Values And Destroying Them While Also Destroying Original Size Which Will Cause The Hat To Rescale
Remove()
Humanoid:WaitForChild("BodyWidthScale"):Destroy()
Remove()
Humanoid:WaitForChild("BodyProportionScale"):Destroy()
Remove()
Humanoid:WaitForChild("BodyTypeScale"):Destroy()
Remove()
Humanoid:WaitForChild("BodyHeightScale"):Destroy()
Remove()
Humanoid:WaitForChild("BodyDepthScale"):Destroy()
Remove()
Humanoid:WaitForChild("HeadScale"):Destroy()
Remove()
