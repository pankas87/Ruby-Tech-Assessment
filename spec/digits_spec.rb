# digits_spec.rb
require 'bigdecimal'
require_relative '../digits'

# Expected Behavior:
# 16 --> 1 + 6 = 7
# 942 --> 9 + 4 + 2 = 15 --> = 1 + 5 = 6
# 132189 --> 1 + 3 + 2 + 1 + 8 + 9 = 24 --> 2 + 4 = 6
# 493193 --> 4 + 9 + 3 + 1 + 9 + 3 = 29 --> 2 + 9 = 11 --> 1 + 1 = 2
RSpec.describe("#add") do
  context "integers" do
    it "correctly adds digits" do
      test_cases = [
        {
          input: 7,
          expected_output: 7,
        },
        {
          input: 16,
          expected_output: 7,
        },
        {
          input: 942,
          expected_output: 6,
        },
        {
          input: 132189,
          expected_output: 6,
        },
        {
          input: 493193,
          expected_output: 2,
        }
      ]

      test_cases.each do |tc|
        expect(Digits.add(tc[:input])).to eq(tc[:expected_output])
      end
    end
  end

  context "floating point" do
    it "correctly add digits by transforming the input to an integer" do
      test_cases = [
        {
          input: 7.0,
          expected_output: 7,
        },
        {
          input: 16.1,
          expected_output: 7,
        },
        {
          input: 942.0,
          expected_output: 6,
        },
        {
          input: 132189.32,
          expected_output: 6,
        },
        {
          input: 493193.567,
          expected_output: 2,
        }
      ]

      test_cases.each do |tc|
        expect(Digits.add(tc[:input])).to eq(tc[:expected_output])
      end
    end
  end

  context "BigDecimal" do
    it "correctly add digits by transforming the input to an integer" do
      test_cases = [
        {
          input: BigDecimal(7, 10),
          expected_output: 7,
        },
        {
          input: BigDecimal(16, 10),
          expected_output: 7,
        },
        {
          input: BigDecimal(942, 10),
          expected_output: 6,
        },
        {
          input: BigDecimal(132189, 10),
          expected_output: 6,
        },
        {
          input: BigDecimal(493193, 10),
          expected_output: 2,
        }
      ]

      test_cases.each do |tc|
        expect(Digits.add(tc[:input])).to eq(tc[:expected_output])
      end
    end
  end

  context "strings" do
    it "correctly add digits by transforming the input to an integer" do
      test_cases = [
        {
          input: "7",
          expected_output: 7,
        },
        {
          input: "16",
          expected_output: 7,
        },
        {
          input: "942",
          expected_output: 6,
        },
        {
          input: "132189",
          expected_output: 6,
        },
        {
          input: "493193",
          expected_output: 2,
        }
      ]

      test_cases.each do |tc|
        expect(Digits.add(tc[:input])).to eq(tc[:expected_output])
      end
    end

    it "throws an error for non-numerical strings" do
      expect { Digits.add("ASD.15") }.to raise_error(ArgumentError)
    end
  end
end