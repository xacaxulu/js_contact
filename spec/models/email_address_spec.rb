require 'spec_helper'

describe EmailAddress do
  context 'new EmailAddress without paramater' do
    it "should be invalid without an address" do
      expect(EmailAddress.new(:address => nil)).to_not be_valid
    end
  end

  describe 'address' do
    context 'new EmailAddress without person_id' do
      it 'should be invalid without person_id' do
        expect(EmailAddress.new(:address => 'dingo@mybaby.com')).to_not be_valid
      end
    end
  end 
end
