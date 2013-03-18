require File.dirname(__FILE__) + '/./spec_helper'

describe Person do

  it "should be invalid without first and last name" do
    expect(Person.new).to_not be_valid
  end

  it "should not be valid without a first name" do
    person = Person.new(first_name: nil)
    person.should_not be_valid
  end

end

