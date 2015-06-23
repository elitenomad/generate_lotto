require 'spec_helper'

module GenerateLotto
	describe Drawing do 
		context "#draw" do
      let(:lottery) { Drawing.new.draw }
			it "return an array" do 
        expect(lottery).to be_kind_of Array
      end

      it "returns an array of 5 elements" do 
        expect(lottery.size).to eq 5
      end

      it "return an array of integers" do 
        lottery.each do |lot|
          expect(lot).to be_a(Integer)
        end
      end

      it "returns elements less than 60" do
        lottery.each do |lot|
          expect(lot).to be <= 60
        end
      end
		end
	end
end

