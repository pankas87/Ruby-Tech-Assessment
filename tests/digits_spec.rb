# digits_spec.rb
require '../digits'

RSpec.describe("#add") do
  # TODO: Add the test cases from the assignment instructions
  context "integers" do
    it "correctly adds digits" do
      test_cases = [
        {
          input: 12345,
          expected_output: 15,
        },
        {
          input: -12345,
          expected_output: 15,
        },
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
          input: 12345.5,
          expected_output: 15,
        },
      ]
    end
  end

  context "BigDecimal" do
    it "correctly add digits by transforming the input to an integer" do
      test_cases = [
        {
          input: BigDecimal("12345.5"),
          expected_output: 15,
        },
      ]
    end
  end

  context "strings" do
    it "correctly add digits by transforming the input to an integer" do
      test_cases = [
        {
          input: "12345",
          expected_output: 15,
        },
      ]
    end

    it "throws an error for non-numerical strings" do

    end
  end
end