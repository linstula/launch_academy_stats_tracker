# Generate a player method
require 'yaml'

def gen_player
	puts "Enter you first name."
	first_name = gets.capitalize.chomp
	puts "Thanks. Now enter your last name."
	last_name = gets.capitalize.chomp
	player(first_name, last_name)
	puts "Ok, the player has been created."
	puts
	puts "Would you like to create another player?"
	another_player = gets.chomp
	if another_player.downcase 		== "yes"
		gen_player
	elsif another_player.downcase 	== "no"
		puts "Ok, try to bring a friend along next time."
	else
		puts "Please answer 'yes' or 'no'."
	end
	puts
	puts "Finished generating players."			

end

def player (first_name, last_name)
	new_player 		= "#{first_name.downcase}_#{last_name.downcase}"
	player 	= "#{first_name} #{last_name}"
	player_stats 	= {
		player_name: 	"#{first_name} #{last_name}",
		wins: 			0,
		losses: 		0,
		total_score: 	0,
		games_played: 	0
	}

	puts player_stats
end

gen_player


# -------------- Need to persist data in text file using YAML --------