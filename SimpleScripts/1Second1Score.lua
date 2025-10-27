local Player = game:GetService("Players").LocalPlayer

Player:SetAttribute("Score", 0)


while true do 
	task.wait(1)
	local Score = Player:GetAttribute("Score")
	Player:SetAttribute("Score", Score + 1)
end

-- This script must be placed inside a localscript to be able to access LocalPlayer, it will create a new attribute and every second, it will be executed and add 1 score to the player
