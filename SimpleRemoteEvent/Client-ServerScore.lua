-- Client
-- LocalScript

local Remote = game:GetService("ReplicatedStorage").RemoteEvent
local click = game:GetService("Workspace"):WaitForChild("Part").ClickDetector


click.MouseClick:Connect(function()
	Remote:FireServer()
end)

-- Server
-- ServerScript

local Remote = game:GetService("ReplicatedStorage").RemoteEvent
local part = workspace.Part
local click = part.ClickDetector

Remote.OnServerEvent:Connect(function(player)
	if player:GetAttribute("Score") == nil then
		player:SetAttribute("Score", 0)
	else
		player:SetAttribute("Score", player:GetAttribute("Score")+1)
	end
end)

-- The client only triggers the action (FireServer) and does not directly modify the player's score.
-- The server is the source of truth and handles all changes to the player's Score attribute.
-- The script ensures the attribute is created if it does not exist and increments it safely.
-- Additional validations (distance checks, rate limiting, or other security measures) can be added in reak projects.
