module GenerateLotto
	class Drawing
		def draw
			(0..60).to_a.sample(5)
		end
	end
end