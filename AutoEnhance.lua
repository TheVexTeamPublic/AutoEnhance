

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

local ChangeFOV = true

--                            X    Y      Z
local CamOffset = Vector3.new(0, -0.25, -1.5)

local FOV = 120
-----------------------------------------------------------------------------------

local PlayerIden = game.Players.LocalPlayer

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