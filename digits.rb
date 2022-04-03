# digits.rb

module Digits
  def Digits.add(input)
    sum = 0

    input = (input < 0) ? input * -1 : input

    while input > 0 do
      sum += input % 10
      input /= 10
    end
    sum
  end
end