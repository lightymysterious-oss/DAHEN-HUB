local NotHub = Instance.new("ScreenGui")
local BlurEffect = Instance.new("BlurEffect")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local VideoFrame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local ContentFrame = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local TitleLabel = Instance.new("TextLabel")
local NotHubTitle = Instance.new("TextLabel")
local DescriptionLabel = Instance.new("TextLabel")
local GetScriptButton = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local CloseButton = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")

NotHub.Name = "NotHub"
NotHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
NotHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
NotHub.ResetOnSpawn = false

BlurEffect.Parent = game:GetService("Lighting")
BlurEffect.Size = 24

MainFrame.Name = "MainFrame"
MainFrame.Parent = NotHub
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundTransparency = 1
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 500, 0, 400)

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = MainFrame

VideoFrame.Name = "VideoFrame"
VideoFrame.Parent = MainFrame
VideoFrame.BackgroundColor3 = Color3.fromRGB(10, 5, 20)
VideoFrame.Size = UDim2.new(1, 0, 1, 0)
VideoFrame.ClipsDescendants = true
VideoFrame.ZIndex = 1

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = VideoFrame

local function createStar(parent)
    local star = Instance.new("Frame")
    star.Parent = parent
    star.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    star.BorderSizePixel = 0
    star.Size = UDim2.new(0, math.random(1, 3), 0, math.random(1, 3))
    star.Position = UDim2.new(math.random(), 0, math.random(), 0)
    star.BackgroundTransparency = math.random(0, 50) / 100
    star.ZIndex = 2
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(1, 0)
    corner.Parent = star
    
    return star
end

local function createNebula(parent, color, position)
    local nebula = Instance.new("Frame")
    nebula.Parent = parent
    nebula.BackgroundColor3 = color
    nebula.BackgroundTransparency = 0.3
    nebula.BorderSizePixel = 0
    nebula.Size = UDim2.new(0, math.random(150, 300), 0, math.random(150, 300))
    nebula.Position = position
    nebula.ZIndex = 1
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(1, 0)
    corner.Parent = nebula
    
    local gradient = Instance.new("UIGradient")
    gradient.Parent = nebula
    gradient.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.7),
        NumberSequenceKeypoint.new(0.5, 0.4),
        NumberSequenceKeypoint.new(1, 1)
    })
    
    return nebula
end

for i = 1, 100 do
    createStar(VideoFrame)
end

local nebula1 = createNebula(VideoFrame, Color3.fromRGB(138, 43, 226), UDim2.new(-0.1, 0, -0.1, 0))
local nebula2 = createNebula(VideoFrame, Color3.fromRGB(75, 0, 130), UDim2.new(0.6, 0, 0.3, 0))
local nebula3 = createNebula(VideoFrame, Color3.fromRGB(0, 191, 255), UDim2.new(0.2, 0, 0.5, 0))

ContentFrame.Name = "ContentFrame"
ContentFrame.Parent = MainFrame
ContentFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
ContentFrame.BackgroundTransparency = 0.2
ContentFrame.Position = UDim2.new(0.08, 0, 0.15, 0)
ContentFrame.Size = UDim2.new(0.84, 0, 0.75, 0)
ContentFrame.ZIndex = 3

UICorner_4.CornerRadius = UDim.new(0, 12)
UICorner_4.Parent = ContentFrame

NotHubTitle.Name = "NotHubTitle"
NotHubTitle.Parent = ContentFrame
NotHubTitle.BackgroundTransparency = 1
NotHubTitle.Position = UDim2.new(0, 0, 0.05, 0)
NotHubTitle.Size = UDim2.new(1, 0, 0.15, 0)
NotHubTitle.Font = Enum.Font.GothamBold
NotHubTitle.Text = "NotHub"
NotHubTitle.TextColor3 = Color3.fromRGB(138, 43, 226)
NotHubTitle.TextScaled = true
NotHubTitle.TextSize = 32
NotHubTitle.TextWrapped = true
NotHubTitle.ZIndex = 4

local titleGradient = Instance.new("UIGradient")
titleGradient.Parent = NotHubTitle
titleGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 43, 226)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 191, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(138, 43, 226))
})

TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = ContentFrame
TitleLabel.BackgroundTransparency = 1
TitleLabel.Position = UDim2.new(0, 0, 0.23, 0)
TitleLabel.Size = UDim2.new(1, 0, 0.12, 0)
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.Text = "SCRIPT OUTDATED"
TitleLabel.TextColor3 = Color3.fromRGB(255, 85, 85)
TitleLabel.TextScaled = true
TitleLabel.TextSize = 22
TitleLabel.TextWrapped = true
TitleLabel.ZIndex = 4

DescriptionLabel.Name = "DescriptionLabel"
DescriptionLabel.Parent = ContentFrame
DescriptionLabel.BackgroundTransparency = 1
DescriptionLabel.Position = UDim2.new(0.08, 0, 0.4, 0)
DescriptionLabel.Size = UDim2.new(0.84, 0, 0.25, 0)
DescriptionLabel.Font = Enum.Font.Gotham
DescriptionLabel.Text = "This script is outdated! Join our discord server to get the new script"
DescriptionLabel.TextColor3 = Color3.fromRGB(220, 220, 230)
DescriptionLabel.TextScaled = true
DescriptionLabel.TextSize = 16
DescriptionLabel.TextWrapped = true
DescriptionLabel.ZIndex = 4

GetScriptButton.Name = "GetScriptButton"
GetScriptButton.Parent = ContentFrame
GetScriptButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
GetScriptButton.Position = UDim2.new(0.15, 0, 0.72, 0)
GetScriptButton.Size = UDim2.new(0.7, 0, 0.18, 0)
GetScriptButton.Font = Enum.Font.GothamBold
GetScriptButton.Text = "Get Updated Script"
GetScriptButton.TextColor3 = Color3.fromRGB(255, 255, 255)
GetScriptButton.TextScaled = true
GetScriptButton.TextSize = 18
GetScriptButton.TextWrapped = true
GetScriptButton.ZIndex = 4

UICorner_5.CornerRadius = UDim.new(0, 10)
UICorner_5.Parent = GetScriptButton

CloseButton.Name = "CloseButton"
CloseButton.Parent = MainFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
CloseButton.Position = UDim2.new(0.92, 0, 0.02, 0)
CloseButton.Size = UDim2.new(0, 35, 0, 35)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 20
CloseButton.ZIndex = 5

UICorner_6.CornerRadius = UDim.new(0, 10)
UICorner_6.Parent = CloseButton

local TweenService = game:GetService("TweenService")

local function animateNebulas()
    while wait(0) do
        local tween1 = TweenService:Create(
            nebula1,
            TweenInfo.new(8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true),
            {Position = UDim2.new(0.2, 0, 0.1, 0)}
        )
        local tween2 = TweenService:Create(
            nebula2,
            TweenInfo.new(10, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true),
            {Position = UDim2.new(0.4, 0, 0.6, 0)}
        )
        local tween3 = TweenService:Create(
            nebula3,
            TweenInfo.new(12, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true),
            {Position = UDim2.new(0.7, 0, 0.2, 0)}
        )
        
        tween1:Play()
        tween2:Play()
        tween3:Play()
        break
    end
end

local function animateStars()
    for _, star in pairs(VideoFrame:GetChildren()) do
        if star:IsA("Frame") and star.Size.X.Offset <= 3 then
            spawn(function()
                while wait(math.random(1, 3)) do
                    local tween = TweenService:Create(
                        star,
                        TweenInfo.new(math.random(10, 20) / 10, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                        {BackgroundTransparency = math.random(0, 80) / 100}
                    )
                    tween:Play()
                end
            end)
        end
    end
end

local function animateTitleGradient()
    while wait(0) do
        local tween = TweenService:Create(
            titleGradient,
            TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1),
            {Offset = Vector2.new(1, 0)}
        )
        tween:Play()
        break
    end
end

spawn(animateNebulas)
spawn(animateStars)
spawn(animateTitleGradient)

local function animateEntrance()
    MainFrame.Size = UDim2.new(0, 0, 0, 0)
    local tween = TweenService:Create(
        MainFrame,
        TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        {Size = UDim2.new(0, 500, 0, 400)}
    )
    tween:Play()
end

animateEntrance()

GetScriptButton.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/mVbn7PN3")
    GetScriptButton.Text = "Link Copied!"
    GetScriptButton.BackgroundColor3 = Color3.fromRGB(67, 181, 129)
    
    local tween = TweenService:Create(
        GetScriptButton,
        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {Size = UDim2.new(0.75, 0, 0.2, 0)}
    )
    tween:Play()
    tween.Completed:Wait()
    
    local tweenBack = TweenService:Create(
        GetScriptButton,
        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {Size = UDim2.new(0.7, 0, 0.18, 0)}
    )
    tweenBack:Play()
end)

CloseButton.MouseButton1Click:Connect(function()
    local tween = TweenService:Create(
        MainFrame,
        TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In),
        {Size = UDim2.new(0, 0, 0, 0)}
    )
    tween:Play()
    tween.Completed:Wait()
    
    BlurEffect:Destroy()
    NotHub:Destroy()
end)

GetScriptButton.MouseEnter:Connect(function()
    TweenService:Create(
        GetScriptButton,
        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {BackgroundColor3 = Color3.fromRGB(108, 121, 255)}
    ):Play()
end)

GetScriptButton.MouseLeave:Connect(function()
    if GetScriptButton.Text ~= "Link Copied!" then
        TweenService:Create(
            GetScriptButton,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(88, 101, 242)}
        ):Play()
    end
end)

CloseButton.MouseEnter:Connect(function()
    TweenService:Create(
        CloseButton,
        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {BackgroundColor3 = Color3.fromRGB(255, 70, 70)}
    ):Play()
end)

CloseButton.MouseLeave:Connect(function()
    TweenService:Create(
        CloseButton,
        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {BackgroundColor3 = Color3.fromRGB(220, 50, 50)}
    ):Play()
end)
