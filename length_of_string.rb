puts "Enter any sentence"
str = gets.downcase
puts "Your input is: #{str}"
char_without_space = str.gsub(/\s+/, '')
char_frequency = Hash.new(0)
char_without_space.each_char do |ch|
  char_frequency[ch] += 1 unless ch == ' '
end

puts "After counting each character frequency"
char_frequency.each do |ch, count|
    puts "#{ch}: #{count}"
end
