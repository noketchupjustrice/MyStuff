--Players
ExamplePlayer = "@Usernamehere" --Insert Full Username (Not Display) Here | Not Case Sensitive So You Can Put It However You Want
--Ranks
ExamplePlayersRank = "ExampleRank" -- Insert Their Rank Here If Wanted
--End
while true do
    if game.Players.FullUsername then -- Insert Full Username (Not Display) Here | Case Sensitive Has To Be Exact
        game.Players.LocalPlayer:Kick(ExamplePlayer .. "Your Custom Message Here | Rank : " .. ExamplePlayersRank) --Customize The Message However You'd Like
    end
end
