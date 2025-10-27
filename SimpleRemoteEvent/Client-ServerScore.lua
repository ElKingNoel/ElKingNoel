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
-- O servidor é a fonte da verdade e lida com todas as alterações no atributo Score do jogador.
-- O script garante que o atributo seja criado caso não exista e o incrementa de forma segura.
-- Validações adicionais (verificação de distância, limite de taxa ou outras medidas de segurança) podem ser adicionadas em projetos reais.
