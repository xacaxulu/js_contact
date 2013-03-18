require 'spec_helper'

  describe "the views for people", type: :request do
    include Capybara::DSL
    before(:all) do
      @person = Person.create(first_name: "John", last_name: "Doe")
      number_a = @person.phone_numbers.create(number: "1234567")
      number_b = @person.phone_numbers.create(number: "7654321")
    end

    describe "when looking at a single person" do
      before(:all) do
        visit person_path(@person)
      end

      it "should have edit links for each phone number" do
        @person.phone_numbers.each do |phone_number|
          page.should have_link("edit", href: edit_phone_number_path(phone_number))
        end
      end
    end
  end
