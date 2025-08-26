local player = game.Players.LocalPlayer
local char = player.Character
local humanoid = char:WaitForChild("Humanoid")

local guiParent = player:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "screenTest"
screenGui.ResetOnSpawn = false
screenGui.Parent = guiParent


local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 100, 0, 50)
CloseBtn.Position = UDim2.new(0.5, 0, 0.5, 0)
CloseBtn.AnchorPoint = Vector2.new(0.5, 0.5)
CloseBtn.Text = "test"
CloseBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.Draggable = true
CloseBtn.Parent = screenGui

local function applySpeed(char)
humanoid.WalkSpeed = 80
end

CloseBtn.MouseButton1Click:Connect(function()
  applySpeed(player.Character)
  end)

player.CharacterAdded:Connect(function(char)
  if humanoid.WalkSpeed ~= 80 then
    applySpeed(char)
    end
  end)
