require_relative 'fizzbuzz'

RSpec.describe do
  describe "fizzbuzz" do
    it "prints Fizz for multiples of 3" do
      expect { fizzbuzz(3) }.to output("1\n2\nFizz\n").to_stdout
    end

    it "prints Buzz for multiples of 5" do
      expect { fizzbuzz(5) }.to output("1\n2\nFizz\n4\nBuzz\n").to_stdout
    end

    it "prints the number for other cases" do
      expect { fizzbuzz(1) }.to output("1\n").to_stdout
      expect { fizzbuzz(2) }.to output("1\n2\n").to_stdout
    end
  end
end
