def replace_alphanumeric(str_arr)
	str_arr = str_arr.downcase.gsub(/\s+/, "")
	vowels = ['a', 'e', 'i', 'o', 'u']
	str_arr.each_char do |ch|
		if vowels.include?(ch)
			puts "fizz"
		elsif ch.match?(/\d/)
			puts "buzz"
		else
			puts "fizzbuzz"
		end
	end
end

replace_alphanumeric("this is a  test123")
replace_alphanumeric("101education")