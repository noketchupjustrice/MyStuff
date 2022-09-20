-- Regular Rejoin
game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players"))

--Rejoin In Same Pos (requires syn.queue_on_teleport function from synapse x)
if not syn.queue_on_teleport then print('Bro Buy Synapse')end;local a=game.Players.LocalPlayer.Character.Head.CFrame;syn.queue_on_teleport(string.format([[
    game:GetService('ReplicatedFirst'):RemoveDefaultLoadingScreen()
    local playeradded, charadded
    playeradded = game:GetService('Players').PlayerAdded:Connect(function(plr)
        charadded = plr.CharacterAdded:Connect(function(char)
			char:WaitForChild("ForceField"):Destroy()
            char:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(%f, %f, %f)
            charadded:Disconnect()
        end)
        playeradded:Disconnect()
    end)
]],a.X,a.Y,a.Z))game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService("Players"))
