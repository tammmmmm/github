local timetime = math.random(0,0.4)
wait(timetime)
-- menu key
local Config = {
    WindowName = "TamHook - Prison Life: Remastered",
	-- menu color
	Color = Color3.fromRGB(83,158,190),
    -- menu keybind
	Keybind = Enum.KeyCode.RightShift
}
-- ui lib loadstring
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/tammmmmm/0/main/%E6%89%98%E6%9E%B6.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))
--thing
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "TamHook Loaded";
	Text = "Why did I recode this script";
	Icon = "http://www.roblox.com/asset/?id=9671571664";
	Duration = 7;
})
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Right Shift To Toggle UI";
	Text = "Like you didn't already know";
	Button1 = "ok"
})

---tabs--------------------------------------
---------------------------------------------
local Tab1 = Window:CreateTab("Main")
local Tab2 = Window:CreateTab("Settings")
---------------------------------------------
local Section1 = Tab1:CreateSection("Teleports")
local Section2 = Tab1:CreateSection("Tools")
local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Credits")
---------------------------------------------
local StarterGui = game:GetService("StarterGui")
local bindable = Instance.new("BindableFunction")

--tp function
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

-- teleport ----------------------------------------------------------------------------------------------------------
local Button1 = Section1:CreateButton("Armory", function()
	goto(885, -135, 50)
end)
local Button2 = Section1:CreateButton("Cafeteria Knife", function()
	goto(948, -130, 15)
end)
local Button3 = Section1:CreateButton("Yard Knife", function()
    goto(772, -140, 305)
end)
local Button4 = Section1:CreateButton("Bench Crowbar", function()
    goto(835, -141, 320)
end)
local Button5 = Section1:CreateButton("Door Crowbar", function()
    goto(810, -142, 193)
end)
local Button19 = Section1:CreateButton("Yard Tower", function()
    goto(886, -109, 383)
end)
local Button6 = Section1:CreateButton("Lobby", function()
    goto(979.7, -140, 200)
end)
local Button7 = Section1:CreateButton("Prison Roof", function()
    goto(985, -107, 31)
end)
local Button8 = Section1:CreateButton("Tree Near Wall", function()
    goto(550, -140, 140)
end)
local Button19 = Section1:CreateButton("Main Gate Ladder", function()
    goto(583, -141, 100)
end)
local Button20 = Section1:CreateButton("Scaffolding Escape", function()
    goto(991, -114, -137)
end)
Button20:AddToolTip("An easy way to escape\nI guess")
local Button9 = Section1:CreateButton("Criminal Base", function()
    goto(-850, -143, -150)
end)
local Button10 = Section1:CreateButton("Criminal Armory", function()
    goto(466, -227, -1067)
end)
local Button11 = Section1:CreateButton("Criminal Hideout", function()
    goto(65, -228, -913)
end)
local Button12 = Section1:CreateButton("Jewelry Store", function()
    goto(-247, -185, -125)
end)
local Button13 = Section1:CreateButton("Bank", function()
    goto(-320, -185, -250)
end)
local Button18 = Section1:CreateButton("Casino", function()
    goto(-372, -185, -478)
end)


local Button14 = Section2:CreateButton("Reset While Ragdolled", function()
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
Button14:AddToolTip("Allows you to reset while tazed\nor ragdolled to not get arrested")
local Label2 = Section2:CreateLabel("Don't spam this, you might crash")

local Button16 = Section2:CreateButton("Disable Fall Damage", function()
    local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
    local scriptPath = game:GetService("Players").LocalPlayer.PlayerGui.StatusUI.Main
    local closureName = "Unnamed function"
    local upvalueIndex = 1
    local closureConstants = {
        [1] = "KeyCode",
        [2] = "InteractionMenuKey",
        [3] = "MouseIconEnabled",
        [4] = false,
        [5] = "Icon",
        [6] = "Visible"
    }
    local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
    local value = false
    local elementIndex = "EnableFallDamage"
    debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "Fall Damage Disabled";
		Text = "Go crazy";
		Duration = 5;
	})
end)
Button16:AddToolTip("Prevents you from being tazed\n and ragdolling when falling")
-- settings tab ----------------------------------------------------------------------------------------------------------
local Toggle3 = Section3:CreateToggle("Menu Key", nil, function(State)
	Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
	Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)

local Colorpicker3 = Section3:CreateColorpicker("UI Color", function(Color)
	Window:ChangeColor(Color)
end)
Colorpicker3:UpdateColor(Config.Color)
--credits
local Label3 = Section4:CreateLabel("TamHook - By Tam\n\n$oap - Teleporting Stuff\n Goo - Trying to help me\n AlexR32 - Bracket v3 UI Lib\nq0ma - Cripware aimbot")

local Button21 = Section3:CreateButton("V3rmillion Thread", function()
    syn.write_clipboard("https://v3rmillion.net/showthread.php?tid=1169429")
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Copied To Clipboard";
        Text = "Go read the awsome thread";
        Icon = "http://www.roblox.com/asset/?id=9671571664";
        Duration = 7;
    })
end)
local Label4 = Section2:CreateLabel("Cripware Aimbot")

local Button22 = Section2:CreateButton("Load Cripware", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tammmmmm/cripware-refresh/main/cripware.lua"))()
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Cripware Loaded";
        Text = "Thanks q0ma";
        Icon = "http://www.roblox.com/asset/?id=7300477598";
        Duration = 8;
    })
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Keybind Is End";
        Text = "you probably already knew";
        Duration = 10;
        Button1 = "Ok"
    })
end)
Button22:AddToolTip("Why would you do this\nKeybind is end")


--menu settings
Window:SetBackground("9657202096")
Window:SetTileScale(0.1)
