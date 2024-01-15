def rock_paper_scissor(player_choice)
	choices = ["Rock", "Paper", "Scissors"]
	computer_choice=choices.sample
	puts "Computer Chose: #{computer_choice}"
	puts "Player Chose: #{player_choice}"
	unless choices.include?(player_choice)
		puts "Invalid choice. Please choose: Rock, Paper, or Scissors"
    return
	end

	if player_choice==computer_choice
		puts "It's a tie!"
	elsif((player_choice=="Rock" && computer_choice=="Scissors") ||
		(player_choice=="Scissors" && computer_choice=="Paper") ||
		(player_choice=="Paper" && computer_choice=="Rock"))
		puts "Player wins"
	else
		puts "Computer wins"
	end
	def play_again?
		puts "Do you want to play again? (y/n)"
		answer = gets.chomp.downcase
		answer == 'yes'
	end
end

puts"=====WELCOME TO ROCK-PAPER-SCISSORS GAME====="
puts "Choose between rock, paper and scissors"
player_choice = gets.chomp.capitalize
rock_paper_scissor(player_choice)