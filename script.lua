local player = game.Players.LocalPlayer

local function applySpeed(char)
    local humanoid = char:WaitForChild("Humanoid")
    local speed = tonumber(SpeedBox.Text) or 16
    humanoid.WalkSpeed = speed
    SpeedLabel.Text = "Velocidade atual: " .. speed
end

-- Aplica no personagem atual
if player.Character then
    applySpeed(player.Character)
end

-- Aplica sempre que respawnar
player.CharacterAdded:Connect(applySpeed)

-- Quando digitar valor e apertar Enter
SpeedBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local newSpeed = tonumber(SpeedBox.Text)
        if newSpeed then
            applySpeed(player.Character)
        else
            SpeedLabel.Text = "Digite um número válido!"
        end
    end
end)
