function Noclip()
    if game.Players.LocalPlayer.Character ~= nil then
        for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") and v.CanCollide == true then
                v.CanCollide = false
            end
        end
    end
end
NoclipLoop = game:GetService("RunService").Stepped:connect(NoclipLoop)

--[[ -- To Disable The Noclip
	if NoclipLoop then
		NoclipLoop:Disconnect()
	end
	game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
]]
