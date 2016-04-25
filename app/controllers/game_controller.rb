class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    @computer_move = ["rock", "paper", "scissors"].sample
    if @user_move == @computer_move
      @result = "Tied!"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "Win!"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "Win!"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "Win!"
    else
      @result = "Lose!!!"
    end
    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
