# frozen_string_literal: true
require_relative "../length_of_string"

RSpec.describe do
  describe "length_of_string" do
    it "outputs frequency of each string" do
			input_str = "Hello world"
      allow_any_instance_of(Kernel).to receive(:gets).and_return(input_str)

      expected_output = <<~OUTPUT
        Enter any sentence
        Your input is: #{input_str.downcase}
        After counting each character frequency
        h: 1
        e: 1
        l: 3
        o: 2
        w: 1
        r: 1
        d: 1
      OUTPUT

      expect { length_of_string }.to output(expected_output).to_stdout
    end
  end
end
