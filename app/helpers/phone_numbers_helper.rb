module PhoneNumbersHelper

  def print_numbers(numbers)
    numbers.collect{ |n| n.number}.join(', ')
  end
end
