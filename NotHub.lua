if game.CoreGui:FindFirstChild("NotHub") then
    game.CoreGui.NotHub:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NotHub"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 300, 0, 160)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -80)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 10)
Corner.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "NotHub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22
Title.Parent = MainFrame

local Desc = Instance.new("TextLabel")
Desc.Size = UDim2.new(1, -20, 0, 40)
Desc.Position = UDim2.new(0, 10, 0, 45)
Desc.BackgroundTransparency = 1
Desc.Text = "Join discord to get the script"
Desc.TextColor3 = Color3.fromRGB(200, 200, 200)
Desc.Font = Enum.Font.Gotham
Desc.TextSize = 14
Desc.TextWrapped = true
Desc.Parent = MainFrame

local Button = Instance.new("TextButton")
Button.Size = UDim2.new(1, -40, 0, 40)
Button.Position = UDim2.new(0, 20, 1, -50)
Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Button.Text = "Copy discord invite"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Font = Enum.Font.GothamBold
Button.TextSize = 14
Button.Parent = MainFrame

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 8)
ButtonCorner.Parent = Button

Button.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/g4zgYBqC")
    Button.Text = "Link copied!"
end)
