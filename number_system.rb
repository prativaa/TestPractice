
puts "ENTER THE DECIMAL NUMBER "
num = gets.to_i
  
def convert_number(num, _from, to)
  result = case to
					when "binary"
            converting_decimal_to_base(num, 2)
          when "octal"
            converting_decimal_to_base(num, 8)
          end
end

def converting_decimal_to_base(n, base)
  remArr = []
  while n > 0
	  dividend = n/base
	  rem = n%base
	  n = dividend
	  remArr.push(rem)
  end
  remArr.reverse.join('')
end

binary_result = convert_number(num, "decimal" , "binary")
octal_result = convert_number(num, "decimal" , "octal")

puts "converting #{num} to binary, we get #{binary_result}"
puts "converting #{num} to octal, we get #{octal_result}"

