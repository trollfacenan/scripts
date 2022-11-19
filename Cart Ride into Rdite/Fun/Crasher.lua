-- this is not instant but whatever it still works
if not fireclickdetector then warn("Unsupported executor.") return end
pcall(function()
	while task.wait(.5) do
		pcall(function()
			for i,v in pairs(workspace:GetDescendants()) do
				task.spawn(function()
					if v:IsA("ClickDetector") then
						fireclickdetector(v)
					end
				end)
			end
		end)
	end		
end)
