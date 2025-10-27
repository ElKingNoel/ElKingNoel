-- This simple and small project will warn whenever a player enters your game by the output, showing the name of the player and a message warning about your entry.


local Player = game:GetService("Players").PlayerAdded

Player:Connect(function(player)
	print("O jogador ".. player.Name.." entrou no jogo!")
end)
