require_relative '../greatest_num'

RSpec.describe do
  describe "#get_user_input" do
		it "asks input from the user with respective position" do
			allow_any_instance_of(Kernel).to receive(:puts)

			result = get_user_input("first")

			allow_any_instance_of(Kernel).to receive(:puts).and_return("Enter first number: ")
		end
  end

  describe "#greatest_among_three" do
    it "returns greatest among three numbers" do
			num1 = 20
			num2 = 70
			num3 = 40

      result = greatest_among_three(num1, num2, num3)
      expect(result).to eq(70)
    end
  end
end
