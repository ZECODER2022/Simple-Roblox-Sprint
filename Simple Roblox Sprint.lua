local UserInputService = game:GetService("UserInputService")

local isRunning = false

UserInputService.InputBegan:Connect(function(input, processed)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		isRunning = true
		local character = game.Players.LocalPlayer.Character
		if character then
			character.Humanoid.WalkSpeed = 32
		end
	end
end)
UserInputService.InputEnded:Connect(function(input, processed)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		isRunning = false
		local character = game.Players.LocalPlayer.Character
		if character then
			character.Humanoid.WalkSpeed = 16
		end
	end
end)