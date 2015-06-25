require_relative "drawing"

module GenerateLotto
  module Helper
    def generate_lotto_drawing
      GenerateLotto::Drawing.new.draw
    end
  end
end