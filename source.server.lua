local dirs = {
	Look = "MinusZ",
	Right = "PlusX",
	Top = "PlusY",
}

task.spawn(function()
	while true do
		task.wait()
		local DraggerUI = game.CoreGui:FindFirstChild("DraggerUI")
		
		if not DraggerUI then
			continue
		end
		
		local ui = DraggerUI:FindFirstChild("ImplementationUI1")
		
		if not ui then
			continue
		end
		
		for _, dir in dirs do
			dir = ui:FindFirstChild(dir)
			if not dir then
				continue
			end
			
			local dhead = dir:FindFirstChild("DimmedHead")
			if dhead then
				local h,s,v = dhead.Color3:ToHSV()
				s = 0.45
				dhead.Color3 = Color3.fromHSV(h, s, v)
			end
			
			local head = dir:FindFirstChild("Head")
			if head then
				local h,s,v = head.Color3:ToHSV()
				s = 0.45
				head.Color3 = Color3.fromHSV(h, s, v)
			end
		end
	end
end)
