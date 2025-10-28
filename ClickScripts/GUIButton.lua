-- CLient side
local button = script.Parent
local remote = game.ReplicatedStorage:WaitForChild("RemoteEvent")

button.MouseButton1Down:Connect(function()
	remote:FireServer()
end)

-- Server side 
local remote = game.ReplicatedStorage:WaitForChild("RemoteEvent")

remote.OnServerEvent:Connect(function(player)
	if player:GetAttribute("Pontos") == nil then
		player:SetAttribute("Pontos", 0)
		
	else
		local pontos = player:GetAttribute("Pontos")
		player:SetAttribute("Pontos", pontos+1)
	end
end)

-- Simple Roblox points system: attach the LocalScript to a GUI button or ClickDetector, and put the RemoteEvent in ReplicatedStorage.  
-- First click creates the "Points" attribute, subsequent clicks increment it by 1.
-- If you want the first click to give 1 point instead of just creating the attribute, change the value in the "if points == nil" block, use 1.
