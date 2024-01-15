def sort_by_perfsq(arr)
	perfect_sq = {}
	arr.map do |num|
		permuted_values = num.to_s.chars.permutation.map(&:join).map(&:to_i).uniq
		count = permuted_values.count {|val| is_perfect_sum?(val)}
		perfect_sq[num] = count
	end
	sorted_arr = display_sorted_values(perfect_sq)
  puts sorted_arr
end

def is_perfect_sum?(num)
	Math.sqrt(num).to_i**2 == num
end

def display_sorted_values(values)
	sorted_values = values.sort_by { |key, value| [-value, key] }.to_h
	sorted_values.keys
end

sort_by_perfsq([715, 112, 136, 169, 144])
sort_by_perfsq([234, 61, 16, 441, 144, 728])




