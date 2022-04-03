# digits.rb

module Digits
  def Digits.add(input)
    sum = 0

    input = Float(input) if input.class == String
    input = input.to_i if input.class != Fixnum
    input = input * -1 if input < 0

    # 16 --> 1 + 6 = 7
    # 942 --> 9 + 4 + 2 = 15 --> = 1 + 5 = 6
    # 132189 --> 1 + 3 + 2 + 1 + 8 + 9 = 24 --> 2 + 4 = 6
    # 493193 --> 4 + 9 + 3 + 1 + 9 + 3 = 29 --> 2 + 9 = 11 --> 1 + 1 = 2


    sum = input

    while sum >= 10
      temp_sum = 0
      temp_input = sum

      while temp_input > 0
        temp_sum += temp_input % 10
        temp_input /= 10
      end
      sum = temp_sum
    end
    sum
  end
end
