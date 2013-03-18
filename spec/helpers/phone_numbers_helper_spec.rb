require 'spec_helper'

describe PhoneNumbersHelper do

  describe "print_numbers" do
    it "should output a comma-separated list of phone numbers" do
      number_a = PhoneNumber.new(number: "1234567")
      number_b = PhoneNumber.new(number: "7654321")
      phone_numbers = [number_a, number_b]
      print_numbers(phone_numbers).should == "1234567, 7654321"
    end
  end

end
