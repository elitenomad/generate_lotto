require_relative 'configuration'

module GenerateLotto
	class Drawing
		def draw
			(0..60).to_a.sample(GenerateLotto.configuration.count)
		end
	end
end