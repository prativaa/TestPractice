# frozen_string_literal: true
require_relative 'box'

RSpec.describe do
  describe "boxy" do
    it "do not display box when input is 0" do
      num = 0
      expect { boxy(num) }.to output("").to_stdout
    end

    it "displays boxes of input number separated by pipe and other design" do
      num = 3
      expected_output = " - - -\n|1|2|3|\n - - -\n"
      expect { boxy(num) }.to output(expected_output).to_stdout
    end
  end
end
