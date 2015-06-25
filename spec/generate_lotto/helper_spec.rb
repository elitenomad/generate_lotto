require "spec_helper"
require "generate_lotto/helper"

class FakeView
  include GenerateLotto::Helper
end

describe FakeView do
  describe "generate_lotto_drawing" do
    it "delegate to GenerateLotto.Drawing.draw" do

      drawing = double("drawing")
      GenerateLotto::Drawing.stub(:new).and_return(drawing)
      expect(drawing).to receive(:draw)
      FakeView.new.generate_lotto_drawing
    end
  end
end