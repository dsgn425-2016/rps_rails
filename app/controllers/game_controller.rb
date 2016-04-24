class GameController < ApplicationController
  def rps

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    moves = ["rock", "paper", "scissors"]

    @user_move = params[:the_move]

    @computer_move = moves.sample.downcase

    if @user_move ==  @computer_move
      then @result = "tie"
    elsif @user_move == moves[0] && @computer_move == moves[2]
      then @result = "win"
    elsif @user_move == moves[0] && @computer_move == moves[1]
      then @result = "lose"
    elsif @user_move == moves[1] && @computer_move == moves[0]
      then @result = "win"
    elsif @user_move == moves[1] && @computer_move == moves[2]
      then @result = "lose"
    elsif @user_move == moves[2] && @computer_move == moves[1]
      then @result = "win"
    elsif @user_move == moves[2] && @computer_move == moves[0]
      then @result = "lose"
    else @result = "test"
    end
    render("rps.html.erb")
  end
end
