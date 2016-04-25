# # Rock, Paper, Scissors
# puts "What your fav animal?"
# fav_animal = gets.chomp
# puts "What's your favorite color?"
# fav_color = gets.chomp
# puts "Your favorite anilal is a(n) #{fav_animal}. Your favorite color is #{fav_color}"
#
#
# animals = ["zebra", "sloth", "hyena", "dog"]
# puts animals.sample
# puts animals.last
# puts animals[1] # => "sloth"
# puts(animals[1]) # => "sloth"
#
# animal = "cat"
# color = "yellow"
#
# if animal == "cat" && color == "yellow"
#   puts "You've got a yellow cat"
# elsif animal == "cat"
#   puts "You've got a cat"
# end
#
#
# puts "What's your favorite number"
#
# num = gets.to_i
# numSq = num*num
#
# puts "The sq of your favorite number is"
# # puts numSq = num.square

# ***********************************************************
# ***********************************************************

# valid_moves = ["rock", "paper", "SCISSORS"]
# user_move = gets.chomp.downcase
#
# while valid_moves.include?(user_move) != true
#   puts "that doesn't seem to be a valid move"
#   puts "rock, paper scissors"
# user_move = gets.chomp.downcase
# end
#
# puts "you chos #{user_move}"

# ***********************************************************
# ***********************************************************
puts '########################################################################'
puts "Let's play a game of ROCK, PAPER SCISSORS!!"
gets
puts "Human player starts first"
puts "What's your name?"
name = gets
# puts "Welcome " name
puts "pick ROCK, PAPER OR SCISSORS"
user_choice = gets
comp_choice = rand(3)
if comp_choice == 1
  comp_choice = "rock"
elsif comp_choice == 2
  comp_choice = "scissors"
else comp_choice = "paper"
  puts comp_choice
  puts user_choice
  
  while comp_choice != user_choice
    if comp_choice % user_choice == 0


    end
  end
  puts "We have a tie"
  puts "trie again"
