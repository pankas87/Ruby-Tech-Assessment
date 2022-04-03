require_relative './digits'

puts "Please insert a number"

number = Float(gets.chomp)
result = Digits.add(number)
puts "Original Number: #{number}, Result of Adding the Digits: #{result}"
