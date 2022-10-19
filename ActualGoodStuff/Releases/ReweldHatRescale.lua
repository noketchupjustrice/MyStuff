-- Found this back months ago just dont want people claiming this :)
-- Gave this script or the concept of how it works to a few people (you know who you are)
-- noketchupjustrice#3666 / fawedawfawfawfwa

--Comparison Between  Reweld Rescale - | Normal Hat Rescale -

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
