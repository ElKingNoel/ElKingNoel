local Part = game:GetService("Workspace"):WaitForChild("Part")
local click = Part:WaitForChild("ClickDetector")

click.MouseClick:Connect(function()
	Part.BrickColor = BrickColor.Random()
end)

-- This script will change the color of a part within the workspace, I used waitforchild in this case to maintain greater accuracy, but it is not extremely necessary
