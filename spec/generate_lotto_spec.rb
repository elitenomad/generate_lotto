require "spec_helper"


describe GenerateLotto do
  describe "#configure" do
    before :each do
      GenerateLotto.configure do |config|
        config.count = 10
      end
    end


    it "returns an array of 10 elements " do
      draw = GenerateLotto::Drawing.new.draw

      expect(draw).to be_a(Array)
      expect(draw.size).to eq 10
    end

    after :each do
      GenerateLotto.reset
    end
  end
end