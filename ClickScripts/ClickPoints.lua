local part = workspace:WaitForChild("Part")
local click = part:WaitForChild("ClickDetector")
part:SetAttribute("Points", 0)

click.MouseClick:Connect(function()
	part:SetAttribute("Points", part:GetAttribute("Points") + 1)
end)

-- This script demonstrates how to create an attribute on a part and increment its value by 1 each time it's clicked.
-- In a real project, this could also be applied to a player's attribute, but for security reasons, I would handle that through a RemoteEvent.
-- Handling player attributes securely will be explored in future projects.
