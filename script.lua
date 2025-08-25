local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local guiParent = (gethui and gethui()) or game.CoreGui

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "screenTest"
screenGui.Parent = guiParent

local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(500, 500, 500, 500)
CloseBtn.Position = UDim2.new(0.5, 0, 0.5, 0)
CloseBtn.Text = "test"
CloseBtn.AnchorPoint = Vector2.new(0.5, 0.5)
CloseBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseBtn.TextColor3 = Color3.fromRGB(255,255,255)
CloseBtn.Parent = screenGui
CloseBtn:MouseButton1Click:Connect(function()
	humanoid.WalkSpeed = 80
end)
