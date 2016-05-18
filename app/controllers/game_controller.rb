class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]
    computer_move = ["rock", "paper", "scissors"]
    @computer_move = computer_move.sample

    if @computer_move == @user_move
      @result = "Tied. Go again."
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "Win!"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "Lose. Try Again."
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "Win!"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "Lose. Try Again"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "Lose. Try Again"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "Win!"
    end

    render("rps.html.erb")
  end
end
