local UserInputService = game:GetService("UserInputService")
local isMobile = UserInputService.TouchEnabled

if isMobile then
    getgenv().keytoclick = "Q"
    local tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = keytoclick
    tool.Activated:Connect(function()
        local vim = game:GetService("VirtualInputManager")
        vim:SendKeyEvent(true, keytoclick, false, game)
    end)
    tool.Parent = game.Players.LocalPlayer.Backpack
end

wait(0.2)
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
local Notify = AkaliNotif.Notify
Notify({
    Description = "lunar ware",
    Title = "lunarware top",
    Duration = 10
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/kar1l/l/main/l"))()
