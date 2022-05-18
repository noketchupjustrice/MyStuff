--Invis Weapon (Must Be Holding) (Troll)
game.Players.LocalPlayer.Character["Bo Staff"].Contents.Handle.WeldParts.Welds.Base:Destroy() --Cahnge "Bo Staff" To The Weapon You Are Holding
game.Players.LocalPlayer.Character["Bo Staff"].Contents.Handle.WeldParts.Welds.TrailPart:Destroy() -- Same Here

--Invis Weapon On Back 
game.Players.LocalPlayer.Character.ItemsAttached.Model.Contents["Handle (Clone)"].Weld:Destroy()

--Invis Weapon Both Holding And Back
game.Players.LocalPlayer.Character["Weapon Name Here"].Contents.Handle.WeldParts.Welds.Base:Destroy() --Change "Weapon Name Here" With The Weapon Name You Have
game.Players.LocalPlayer.Character["Weapon Name Here"].Contents.Handle.WeldParts.Welds.TrailPart:Destroy() -- Same Here
game.Players.LocalPlayer.Character.ItemsAttached.Model.Contents["Handle (Clone)"].Weld:Destroy() --Shouldnt Need To Change Anything Here
