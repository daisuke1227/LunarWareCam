local UserInputService = game:GetService("UserInputService")
local isMobile = UserInputService.TouchEnabled

local function createTool()
    if isMobile then
        getgenv().keytoclick = "Q"
        -- Check if the tool already exists before creating it
        local existingTool = game.Players.LocalPlayer.Backpack:FindFirstChild(keytoclick)
        if not existingTool then
            local tool = Instance.new("Tool")
            tool.RequiresHandle = false
            tool.Name = keytoclick
            tool.CanBeDropped = false -- Prevent the tool from being dropped
            tool.Activated:Connect(function()
                local vim = game:GetService("VirtualInputManager")
                vim:SendKeyEvent(true, keytoclick, false, game)
            end)
            tool.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end

-- Execute createTool function initially
createTool()

-- Connect to CharacterAdded event to respawn the tool when the character respawns
game.Players.LocalPlayer.CharacterAdded:Connect(createTool)

wait(0.2)
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
local Notify = AkaliNotif.Notify
Notify({
    Description = "lunar ware",
    Title = "lunarware top",
    Duration = 3
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/daisuke1227/l/main/Lunar.lua"))()
