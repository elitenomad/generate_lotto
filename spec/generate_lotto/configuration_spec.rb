require "spec_helper"

module GenerateLotto
  describe Configuration do
    context "#count" do
      it "#count default to 5" do
        config = Configuration.new
        expect(config.count).to eq 5
      end

      it "#count set value to 10" do
        config = Configuration.new
        config.count = 10
        expect(config.count).to eq 10
      end
    end
  end
end