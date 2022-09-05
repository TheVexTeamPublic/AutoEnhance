

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

local ChangeFOV = true

local PlayerIden = game.Players.LocalPlayer

local char = PlayerIden.Character

local hum = char:WaitForChild("Humanoid")

local head = char:FindFirstChild("Head")

local Offset = Vector3.new(0, -0.125, -1)

hum.CameraOffset = Offset

local FOV = 120
-----------------------------------------------------------------------------------

if ChangeFOV == true then
game.Workspace.CurrentCamera.FieldOfView = FOV
end

PlayerIden.Character.Humanoid.CameraOffset = CamOffset
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
