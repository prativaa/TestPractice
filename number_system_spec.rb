require_relative 'number_system'

RSpec.describe do
  describe "#convert_number" do
		it "converts decimal number to binary number system if to is binary" do
			num = 42
			allow_any_instance_of(Object).to receive(:converting_decimal_to_base).with(num, 2)
		end

		it "converts decimal number to octal number system if to is octal" do
			num = 42
			allow_any_instance_of(Object).to receive(:converting_decimal_to_octal).with(num, 8)
		end

		it "do not converts decimal number to any number system if to is nil" do
			num = 42
			allow_any_instance_of(Object).to receive(:converting_decimal_to_octal).with(num, nil)
			convert_number(num, "decimal", nil)
		end
  end

  describe "#converting_decimal_to_base" do
    it "converts decimal to binary if base is 2" do
			n = 42
			base = 2
			expect(converting_decimal_to_base(n, base)).to_not eq(2)
			expect(converting_decimal_to_base(n, base)).to eq("101010")
    end

		it "converts decimal to octal if base is 8" do
			n = 42
			base = 8
			expect(converting_decimal_to_base(n, base)).to_not eq(2)
			expect(converting_decimal_to_base(n, base)).to eq("52")
    end
  end
end
