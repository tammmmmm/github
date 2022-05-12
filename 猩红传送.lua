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
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-850, -143, -150)
