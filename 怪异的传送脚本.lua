local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/tammmmmm/github/main/wallylib.lua"))()
local mainUI = ui:Init(game:GetService("CoreGui"))
local soapTab = mainUI:AddTab("Tam's Teleports")
--the mf teleport function.
--die.
function goto(v1,v2,v3)
    local plr = game.Players.LocalPlayer
    local chara = plr.Character
    if chara:FindFirstChildOfClass("Humanoid") then chara:FindFirstChildOfClass("Humanoid"):ChangeState(15) end
    chara:ClearAllChildren()
    local newChar = Instance.new("Model")
    newChar.Parent = workspace
    plr.Character = newChar
    wait()
    plr.Character = chara
    newChar:Destroy()
    wait(0.8)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1,v2,v3)
    end

--Teleports Dropdown
local teleportpart = soapTab:AddSection("Teleports")

local Armory = teleportpart:AddButton("Armory", function()
    goto(885, -135, 50)
end)
local Caf = teleportpart:AddButton("Cafeteria Knife", function()
    goto(948, -130, 15)
end)
local Yard = teleportpart:AddButton("Yard Knife", function()
    goto(772, -140, 305)
end)
local Lobby = teleportpart:AddButton("Lobby", function()
    goto(979.7, -140, 200)
end)
local hideout = teleportpart:AddButton("Prison Roof", function()
    goto(985, -107, 31)
end)
local tree = teleportpart:AddButton("Tree Near Wall", function()
    goto(550, -140, 140)
end)
local Criminal = teleportpart:AddButton("Crim Base", function()
    goto(-850, -143, -150)
end)
local armor = teleportpart:AddButton("Crim Armory", function()
    goto(466, -227, -1067)
end)
local bank = teleportpart:AddButton("Bank", function()
    goto(-320, -185, -250)
end)
local hideout = teleportpart:AddButton("Hideout", function()
    goto(65, -228, -913)
end)
--Misc Dropdown
local miscpart = soapTab:AddSection("Misc")
local hideout = miscpart:AddButton("Reset While Tazed", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
