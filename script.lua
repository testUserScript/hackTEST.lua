local player = game.Players.LocalPlayer
local humanoid = player.Character:WaitForChild("Humanoid")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "screenTest"
screenGui.Parent = game.CoreGui

local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 100, 0, 50)
CloseBtn.Position = UDim2.new(0.5, 0, 0.5, 0)
CloseBtn.Text = "test"
CloseBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseBtn.TextColor3 = Color3.fromRGB(255,255,255)
CloseBtn.Parent = screenGui
CloseBtn:MouseButton1Click:Connect(function()
	humanoid.WalkSpeed = 80
end)


