require "spec_helper"
require "fizzbuzz"


describe Fizzbuzz do

  context "number is dividable by 3" do
    it "returns \"fizz\"" do
      f = Fizzbuzz.new(3)
      my_items = f.items
      expect(my_items).to include "fizz"
    end
  end

  context "number is not dividable by 3" do
    it "doesn't return \"fizz\"" do
      f = Fizzbuzz.new(2)
      my_items = f.items
      expect(my_items).to eql [1,2]
    end
  end

  context "number is dividable by 5" do
    it "returns \"buzz\"" do
      f = Fizzbuzz.new(5)
      my_items = f.items
      expect(my_items).to include "buzz"
    end
  end

  context "number is dividable by both 3 and 5" do
    it "returns \"buzz\"" do
      f = Fizzbuzz.new(16)
      my_items = f.items
      expect(my_items).to include "fizzbuzz"
    end
  end
end
