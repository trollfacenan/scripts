-- this is not instant but whatever it still works
if not fireclickdetector then warn("Unsupported executor.") return end
while true do
	task.wait(.2)
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("ClickDetector") then
			fireclickdetector(v)
		end
	end
end
