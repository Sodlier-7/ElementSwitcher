local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remote = ReplicatedStorage:WaitForChild("BridgeNet2"):WaitForChild("dataRemoteEvent")

local function SwitchElement(element)
    Remote:FireServer({
        {
            Action = true,
            Info = "Switch",
            Values = {element}
        },
        "\006"
    })
end

local gui = Instance.new("ScreenGui")
gui.Name = "ElementSwitcher"
gui.ResetOnSpawn = false
gui.Parent = game.CoreGui

local main = Instance.new("Frame", gui)
main.Size = UDim2.fromScale(0.38, 0.35)
main.Position = UDim2.fromScale(0.31, 0.3)
main.BackgroundColor3 = Color3.fromRGB(25,25,25)
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true

Instance.new("UICorner", main).CornerRadius = UDim.new(0,16)

local title = Instance.new("TextLabel", main)
title.Size = UDim2.fromScale(1,0.18)
title.BackgroundTransparency = 1
title.Text = "Element Switch"
title.TextColor3 = Color3.new(1,1,1)
title.TextScaled = true
title.Font = Enum.Font.GothamBold

local aero = Instance.new("TextButton", main)
aero.Size = UDim2.fromScale(0.85,0.18)
aero.Position = UDim2.fromScale(0.075,0.25)
aero.Text = "AERO"
aero.TextScaled = true
aero.BackgroundColor3 = Color3.fromRGB(170,170,170)
aero.TextColor3 = Color3.new(0,0,0)
Instance.new("UICorner", aero).CornerRadius = UDim.new(0,12)

local flame = Instance.new("TextButton", main)
flame.Size = UDim2.fromScale(0.85,0.18)
flame.Position = UDim2.fromScale(0.075,0.47)
flame.Text = "FLAME"
flame.TextScaled = true
flame.BackgroundColor3 = Color3.fromRGB(200,50,50)
flame.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", flame).CornerRadius = UDim.new(0,12)

local terra = Instance.new("TextButton", main)
terra.Size = UDim2.fromScale(0.85,0.18)
terra.Position = UDim2.fromScale(0.075,0.69)
terra.Text = "TERRA"
terra.TextScaled = true
terra.BackgroundColor3 = Color3.fromRGB(120,80,40)
terra.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", terra).CornerRadius = UDim.new(0,12)

local credit = Instance.new("TextLabel", main)
credit.Size = UDim2.fromScale(1,0.1)
credit.Position = UDim2.fromScale(0,0.88)
credit.BackgroundTransparency = 1
credit.Text = "by Soldier_7"
credit.TextColor3 = Color3.fromRGB(200,200,200)
credit.TextScaled = true
credit.Font = Enum.Font.Gotham

local minimize = Instance.new("TextButton", main)
minimize.Size = UDim2.fromScale(0.12,0.15)
minimize.Position = UDim2.fromScale(0.85,0.02)
minimize.Text = "-"
minimize.TextScaled = true
minimize.BackgroundColor3 = Color3.fromRGB(60,60,60)
minimize.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", minimize).CornerRadius = UDim.new(1,0)

local ball = Instance.new("TextButton", gui)
ball.Size = UDim2.fromScale(0.12,0.12)
ball.Position = UDim2.fromScale(0.85,0.4)
ball.Text = "🇪🇬"
ball.TextScaled = true
ball.BackgroundColor3 = Color3.fromRGB(50,50,50)
ball.TextColor3 = Color3.new(1,1,1)
ball.Visible = false
ball.Active = true
ball.Draggable = true
Instance.new("UICorner", ball).CornerRadius = UDim.new(1,0)

aero.MouseButton1Click:Connect(function() SwitchElement("Aero") end)
flame.MouseButton1Click:Connect(function() SwitchElement("Flame") end)
terra.MouseButton1Click:Connect(function() SwitchElement("Terra") end)

minimize.MouseButton1Click:Connect(function()
    main.Visible = false
    ball.Visible = true
end)

ball.MouseButton1Click:Connect(function()
    main.Visible = true
    ball.Visible = false
end)
