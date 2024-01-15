def multiply_with_add(a, b)
	x=b
	(a-1).times do
		x= b+x
	end
	puts"#{a} times #{b} is #{x}"
end


multiply_with_add(2,3)
multiply_with_add(14,2)