class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result = "tied!"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "win!"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "lose!"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "lose!"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "win!"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "lose!"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "win!"
    end
    render("rps.html.erb")
  end
end
