#Rock, Paper, Scissors
# animals = ['zebra', 'sloth', 'hyena', 'dog']
# puts animals[1]
# puts animals.sample

puts "Your move: rock, paper, or scissors!"

valid_moves = ["Rock", "Paper", "Scissors"]
proper_user_throw = gets.chomp.capitalize

while valid_moves.include?(proper_user_throw) !=true
  puts "That doesn't seem to be a valid move."
  puts "Rock, Paper, or Scissors?"
  user_move = gets.chomp.downcase
end

my_throw = valid_moves.sample

puts "My throw is a #{my_throw}"

if proper_user_throw == my_throw
  puts "It's a Tie. You got Lucky."
elsif proper_user_throw == "Rock" && my_throw == "Paper"
  puts "YOU LOSE! HAHA"
elsif proper_user_throw == "Rock" && my_throw == "Scissors"
  puts "You win. Are you cheating?."
elsif proper_user_throw == "Paper" && my_throw == "Rock"
  puts "You win. Are you cheating?."
elsif proper_user_throw == "Paper" && my_throw == "Scissors"
  puts "YOU LOSE! HAHA"
elsif proper_user_throw == "Scissors" && my_throw == "Paper"
  puts "You win. Are you cheating?."
elsif proper_user_throw == "Scissors" && my_throw == "Rock"
  puts "YOU LOSE! HAHA"
end
puts "Thanks for playing"


# puts ""
# puts ""
# puts ""
# puts "Do you want to play again? Y/N"
# decision = gets.chomp
# if decision == 'Y'
#   puts "Your move: rock, paper, or scissors!"
#   user_throw = gets.chomp
#   throw_options = ['Rock', 'Paper', 'Scissors']
#   my_throw = throw_options.sample
#   puts "My throw is a #{my_throw}"
#   if proper_user_throw == "Rock" && my_throw == "Paper"
#     puts "YOU LOSE! HAHA"
#   elsif proper_user_throw == "Rock" && my_throw == "Rock"
#     puts "It's a Tie. You got Lucky."
#   elsif proper_user_throw == "Rock" && my_throw == "Scissors"
#     puts "You win. Are you cheating?."
#   elsif proper_user_throw == "Rock" && my_throw == "Scissors"
#     puts "You win. Are you cheating?."
#   elsif proper_user_throw == "Paper" && my_throw == "Paper"
#     puts "It's a Tie. You got Lucky."
#   elsif proper_user_throw == "Paper" && my_throw == "Rock"
#     puts "You win. Are you cheating?."
#   elsif proper_user_throw == "Paper" && my_throw == "Scissors"
#     puts "YOU LOSE! HAHA"
#   elsif proper_user_throw == "Scissors" && my_throw == "Scissors"
#     puts "It's a Tie. You got Lucky."
#   elsif proper_user_throw == "Scissors" && my_throw == "Paper"
#     puts "You win. Are you cheating?."
#   elsif proper_user_throw == "Scissors" && my_throw == "Rock"
#     puts "YOU LOSE! HAHA"
#   end
