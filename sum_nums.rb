def get_sum(a,b)
	min_val, max_val = [a,b].minmax
	puts "sum of numbers between #{a} and #{b} is #{(min_val..max_val).sum}"
 end

get_sum(5,-1)