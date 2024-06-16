local target_fov = 55.0

Citizen.CreateThread(function()
	SetConvarReplicated("cam_vehicleFirstPersonFOV", target_fov)
end)