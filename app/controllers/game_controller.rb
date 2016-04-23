class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result "You tied!"
     elsif @user_move == "paper" && @computer_move == "rock"
      @result "You win!"
     elsif @user_move == "paper" && @computer_move == "scissors"
      @result "You lose!"
     elsif @user_move == "scissors" && @computer_move == "rock"
      @result "You lose!"
     elsif @user_move == "scissors" && @computer_move == "paper"
      @result "You win!"
     elsif @user_move == "rock" && @computer_move == "paper"
      @result "You lose!"
     elsif @user_move == "rock" && @computer_move == "scissors"
      @result "You win!"
     end

#  if @user_move == @computer_move
    @result = "It's a tie"








    render("rps.html.erb")
  end
end
