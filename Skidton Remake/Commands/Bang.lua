-- noketchupjustrice#3666 | InfiniteYield For The Animations Im Too Lazy
--READ | Protons Version Of "Bang" Used Some Patched Method Of Bringing Without Removing Your Humanoid Which Is Patched (At Least The Leaked Version) And Used GripPos To Make Them Look Bent Over | So This Is Just A Regular Bang
function R15Rigtype(Player) -- Function To Detirmine If The LocalPlayer Is In R15 Or R6
	if Player.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R15 then
		return true
	end
end

local Target = game.Players['kingsmen22'] -- Target Here You Can Use The GetTarget Functoin In The Kill At |  https://github.com/noketchupjustrice/MyStuff/blob/main/Skidton%20Remake/Commands/Kill.lua

BangAnimation = Instance.new("Animation") -- Makes A New Animation

if not R15Rigtype(game.Players.LocalPlayer) then -- RigCheck In Action
    BangAnimation.AnimationId = "rbxassetid://148840371"
else
    BangAnimation.AnimationId = "rbxassetid://5918726674"
end

BangAnimationLoaded = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(BangAnimation) -- Loads The Bang Animation

BangAnimationLoaded:Play(.1, 1, 1)-- Plays The Bang Animation
BangAnimationLoaded:AdjustSpeed(3) -- YOu Can Change This Value For The Speed Of The Animation

PlayerDied = game.Players.LocalPlayer.Character:FindFirstChildOfClass"Humanoid".Died:Connect(function() -- Waiting For Our Player To Die In Order To Stop
    BangLoop = BangLoop:Disconnect() -- Disconnects From The Bang Loop
    BangAnimationLoaded:Stop() -- Stops The Animation
    BangAnimation:Destroy() -- Destroys The Animation
    PlayerDied:Disconnect() --Disconnects From The Player Died
end)
local OffSet = CFrame.new(0, 0, 1.3) -- Offset To Be Behind The Player

    BangLoop = game.RunService.Stepped:Connect(function() -- Loop
    pcall(function() --Pcall For Any Errors
        local TargetRootPart = Target.Character.HumanoidRootPart -- Targets RootPart Which Is What We Will Be Tping TO
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetRootPart.CFrame * OffSet -- Tps To The Players RootPart Times The Offset To Be Behind The Player
    end)
end)
