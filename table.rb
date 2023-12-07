puts "Enter number of boxes you want"
num = gets.to_i

def boxy(num)
	if (num>0)
		tb = (1..num).to_a.map(&:to_i)
		puts " -" * num
  		puts "|" + tb.join('|') + "|"
		puts " -" * num
	end
end

boxy(num)
