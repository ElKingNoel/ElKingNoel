local part = script.Parent

part.Touched:Connect(function(part)
	local humanoid = part.Parent:FindFirstChild("Humanoid")
	
	if humanoid then
		humanoid.Health = 0
	end
end)

