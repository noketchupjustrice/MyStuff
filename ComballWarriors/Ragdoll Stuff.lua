--enable ragdoll
rolf = {[1] = true}
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(unpack(rolf))

--disable ragdoll
rolf = {[1] = false}
game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(unpack(rolf))

--loop anti ragdoll example
local antiragdoll = true
while antiragdoll == true do
    wait()
    rolf = {[1] = false}
    game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(unpack(rolf))
end
