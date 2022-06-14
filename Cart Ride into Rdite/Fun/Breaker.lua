pcall(function()
	while wait(0.5) do
		pcall(function()
			for i,v in pairs(workspace:GetDescendants()) do
				spawn(function()
					if v:IsA("ClickDetector") then
						fireclickdetector(v)
					end
				end)
			end
		end)
	end		
end)
