require "spec_helper"

describe Person do

  it "should be invalid without first and last name" do
    expect(Person.new).to_not be_valid
  end

  it "should not be valid without a first name" do
    person = Person.new(first_name: nil)
    person.should_not be_valid
  end

  describe 'person' do
    
    before(:each) do
      @person = Person.new(first_name: "John", last_name: "Doe")
    end

    it "should have an array of phone numbers" do
      @person.phone_numbers.class.should == Array
    end

    it "should have an array of email addresses" do
      expect(@person.email_addresses).to be_kind_of(Array)
    end

  end

end

