

--[[
███████╗██████╗░██╗████████╗██╗░░██╗███████╗██████╗░███████╗
██╔════╝██╔══██╗██║╚══██╔══╝██║░░██║██╔════╝██╔══██╗██╔════╝
█████╗░░██║░░██║██║░░░██║░░░███████║█████╗░░██████╔╝█████╗░░
██╔══╝░░██║░░██║██║░░░██║░░░██╔══██║██╔══╝░░██╔══██╗██╔══╝░░
███████╗██████╔╝██║░░░██║░░░██║░░██║███████╗██║░░██║███████╗
╚══════╝╚═════╝░╚═╝░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚══════╝
]]

local BodyVisible = true

local First_Person_Lock = true

local FOV = game.Workspace.CurrentCamera.FieldOfView

--local ChangeFOV = true

--                            X    Y      Z
local PlayerIden = game.Players.LocalPlayer
local char = PlayerIden.CharacterAdded:wait()
local hum = char:WaitForChild("Humanoid")
local rootpart,head = char:WaitForChild("HumanoidRootPart"),char:WaitForChild("Head")
game:GetService("RunService"):BindToRenderStep("CameraOffset",Enum.RenderPriority.Camera.Value-1,function()
	hum.CameraOffset = (rootpart.CFrame+Vector3.new(0,1.25,-1.5)):pointToObjectSpace(head.CFrame.p)
end)

local RunFOV = 120
local RegFOV = 95
-----------------------------------------------------------------------------------

--[[if ChangeFOV == true then
game.Workspace.CurrentCamera.FieldOfView = FOV
end
]]

--PlayerIden.Character.Humanoid.CameraOffset = CamOffset
if First_Person_Lock == true then
PlayerIden.CameraMode = "LockFirstPerson"
end

if BodyVisible == true then
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
game:GetService("RunService").RenderStepped:Connect(function()
	for i, part in pairs(character:GetChildren())do
		if string.match(part.Name, "Arm")or string.match(part.Name, "Hand")then
			part.LocalTransparencyModifier = 0
		end
	end
end)
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
game:GetService("RunService").RenderStepped:Connect(function()
	for i, part in pairs(character:GetChildren())do
		if string.match(part.Name, "Leg")or string.match(part.Name, "Foot")then
			part.LocalTransparencyModifier = 0
		end
	end
end)
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
game:GetService("RunService").RenderStepped:Connect(function()
	for i, part in pairs(character:GetChildren())do
		if string.match(part.Name, "Torso")or string.match(part.Name, "Waist")then
			part.LocalTransparencyModifier = 0
		end
	end
end)
end

-- Running
local uis = Game:GetService("UserInputService")
uis.InputBegan:connect(function(inst)
   if inst.KeyCode == Enum.KeyCode.LeftShift then
       game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed + 5
		FOV = RunFOV	
   end
end)
uis.InputEnded:connect(function(inst)
   if inst.KeyCode == Enum.KeyCode.LeftShift then
       game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed - 5
			FOV = RegFOV
   end
end)
