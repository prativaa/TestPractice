def pallindrome_numbers(initial_num)
	digits=[]
	num = initial_num
	while(num>0)
		div, rem = num.divmod(10)
		num = div
		digits.push(rem)
	end
	reversed_num = digits.join('').to_i
	initial_num==reversed_num ? (puts "#{initial_num} and #{reversed_num} are same. So, it is a pallindrome number") : (puts "#{initial_num} and #{reversed_num} are not same. So, it is not a pallindrome number")
end

pallindrome_numbers(1441)
pallindrome_numbers(1234)