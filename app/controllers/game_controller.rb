class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    # In the end, make sure you assign the correct values to the
    #   following two variables:

# RPS Attempt

puts "Welcome to RPS!"

puts "Rock, Paper, or Scissors?"

usermove = gets.chomp

puts "You chose #{usermove}."

computermove = ["rock", "paper", "scissors"].sample

puts "The computer chose #{computermove}."

if usermove == computermove
  puts "You tied!"
elsif usermove == "paper" && computermove == "rock"
  puts "You WIN!"
elsif usermove == "paper" && computermove == "scissors"
  puts "You lose!"
elsif usermove == "scissors" && computermove == "rock"
  puts "You lose!"
elsif usermove == "scissors" && computermove == "paper"
  puts "You WIN!"
elsif usermove == "rock" && computermove == "paper"
  puts "You lose!"
elsif usermove == "rock" && computermove == "scissors"
  puts "You WIN!"
end



    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
