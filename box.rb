require 'tty-box'

puts "Enter number of boxes you want"
num = gets.to_i

def print_boxes(num)
  if num > 0
    numbers = (1..num).to_a.map(&:to_i)
    box_content = numbers.join('|')
    box = TTY::Box.frame box_content

    puts " -" * num
    puts box
    puts " -" * num

  end
end

print_boxes(num)

