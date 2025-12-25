local LibraryUrl = "https://raw.githubusercontent.com/Vovabro46/trash/refs/heads/main/Test.lua"
local Success, Library = pcall(function()
    return loadstring(game:HttpGet(LibraryUrl))()
end)

if not Success then
    warn("Failed to load Onyx Library!")
    return
end

Library:Watermark("NotHub v2.3 | Discord")
local Window = Library:Window("NotHub v2.3")

local Icons = {
    Discord = "7733917120"
}

Window:Section("Discord Access Required")
local DiscordTab = Window:Tab("Discord", Icons.Discord)

local DiscordPage = DiscordTab:SubTab("Get Access")
local FeaturesPage = DiscordTab:SubTab("Features Preview")

local AccessGroup = DiscordPage:Groupbox("Get Full Access", "Left")
local StatusGroup = DiscordPage:Groupbox("Status", "Right")

AccessGroup:AddLabel("Join our Discord to unlock NotHub v2.3!")
AccessGroup:AddParagraph({
    Title = "Full Script Access",
    Content = "All features are locked until you join our Discord server. Get instant access after joining!",
    TextWrapped = true
})

AccessGroup:AddButton({
    Title = "Copy Discord Link",
    Callback = function()
        local DISCORD_INVITE = "https://discord.gg/wF3dQMQc"
        if setclipboard then
            setclipboard(DISCORD_INVITE)
            Library:Notify("Discord link copied to clipboard!", 3)
        end
    end
})

AccessGroup:AddButton({
    Title = "Open Discord",
    Callback = function()
        local DISCORD_INVITE = "https://discord.gg/wF3dQMQc"
        if syn and syn.request then
            syn.request({
                Url = "http://127.0.0.1:6463/rpc?v=1",
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json",
                    ["Origin"] = "https://discord.com"
                },
                Body = game:GetService("HttpService"):JSONEncode({
                    cmd = "BROWSER_OPEN",
                    args = {url = DISCORD_INVITE},
                    nonce = game:GetService("HttpService"):GenerateGUID(false)
                })
            })
        end
    end
})

StatusGroup:AddLabel("Current Status:")
StatusGroup:AddLabel("🔒 Script Locked")
StatusGroup:AddLabel("Waiting for Discord access")
StatusGroup:AddSeparator()
StatusGroup:AddLabel("Version: v2.3")
StatusGroup:AddLabel("Developer: NotHub Team")

local PreviewGroup = FeaturesPage:Groupbox("Features Preview", "Left")
local InfoGroup = FeaturesPage:Groupbox("Information", "Right")

PreviewGroup:AddLabel("Available Features After Access:")
PreviewGroup:AddBulletText("Auto Farming System")
PreviewGroup:AddBulletText("Kill Aura & Combat")
PreviewGroup:AddBulletText("Player ESP & Visuals")
PreviewGroup:AddBulletText("Speed & Jump Mods")
PreviewGroup:AddBulletText("Game Specific Features")
PreviewGroup:AddBulletText("Anti-AFK & Utilities")
PreviewGroup:AddBulletText("Teleport System")
PreviewGroup:AddBulletText("Item ESP & Auto Collect")

InfoGroup:AddLabel("About NotHub v2.3")
InfoGroup:AddParagraph({
    Title = "Premium Script",
    Content = "NotHub v2.3 is a premium script with advanced features and regular updates. Join our Discord to get started!",
    TextWrapped = true
})
InfoGroup:AddLabel("Support: Available in Discord")
InfoGroup:AddLabel("Updates: Regular releases")
InfoGroup:AddLabel("Compatibility: Multi-game")

Library:Notify("Join Discord to unlock NotHub v2.3!", 5)
