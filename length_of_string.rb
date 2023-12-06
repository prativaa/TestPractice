puts "Enter any sentence"
str = gets
puts "Your input is: #{str}"
without_space = str.gsub(/\s+/, '')
without_space = without_space.downcase

frequency = Hash.new(0)
without_space.each_char.with_index do |ch, i|
    counts = without_space.count(without_space[i])
    frequency[ch] = counts
end

puts "After counting each character frequency"
frequency.each do |ch, count|
    puts "#{ch}: #{count}"
end
