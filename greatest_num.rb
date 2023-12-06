def get_user_input(position)
	puts "Enter #{position} number: "
	gets.to_i
end

num1 = get_user_input("first")
num2 = get_user_input("second")
num3 = get_user_input("third")

def greatest_among_three(num1, num2, num3)
	[num1, num2, num3].max
end

greatest_num = greatest_among_three(num1, num2, num3)
print "Greatest among three numbers #{num1}, #{num2}, and #{num3} is: #{greatest_num}"
