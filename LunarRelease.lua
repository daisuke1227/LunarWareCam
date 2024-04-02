local UserInputService = game:GetService("UserInputService")
local isMobile = UserInputService.TouchEnabled

local function createTool()
    if isMobile then
        local keyToClick = "Q"
        local existingTool = game.Players.LocalPlayer.Backpack:FindFirstChild(keyToClick)
        
        if not existingTool then
            local tool = Instance.new("Tool")
            tool.RequiresHandle = false
            tool.Name = keyToClick
            tool.CanBeDropped = false
            tool.Activated:Connect(function()
                local vim = game:GetService("VirtualInputManager")
                vim:SendKeyEvent(true, keyToClick, false, game)
            end)
            tool.Parent = game.Players.LocalPlayer.Backpack
        else
            local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
            local Notify = AkaliNotif.Notify
            Notify({
                Description = "Q Tool already in inventory",
                Title = "Notification",
                Duration = 3
            })
            return
        end
    end
    
    wait(0.2)
    local AkaliNotif2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
    local Notify2 = AkaliNotif2.Notify
    Notify2({
        Description = "lunar ware",
        Title = "lunarware top",
        Duration = 3
    })

    -- Load the Lunar script only if it hasn't been loaded before
    if not game:GetService("Players").LocalPlayer:FindFirstChild("Lunar") then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/daisuke1227/l/main/Lunar.lua"))()
    end
end

createTool()

game.Players.LocalPlayer.CharacterAdded:Connect(createTool)
