require_relative 'fizzbuzz'

RSpec.describe do
  describe "fizzbuzz" do
    it "prints Fizz for multiples of 3" do
      expect { fizzbuzz }.to output(/Fizz/).to_stdout
    end

    it "prints Buzz for multiples of 5" do
      expect { fizzbuzz }.to output(/Buzz/).to_stdout
    end

    it "prints FizzBuzz for multiples of 3 and 5" do
      expect { fizzbuzz }.to output(/FizzBuzz/).to_stdout
    end

    it "prints the number for other cases" do
      expect { fizzbuzz }.to output(/1/).to_stdout
      expect { fizzbuzz }.to output(/1\n2/).to_stdout
    end
  end
end
