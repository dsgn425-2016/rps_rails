class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      outcome = "tied"
    elsif @user_move == "paper" && @computer_move == "rock"
      outcome = "win"
    elsif @user_move == "paper" && @computer_move == "scissors"
      outcome = "lose"
    elsif @user_move == "scissors" && @computer_move == "rock"
      outcome = "lose"
    elsif @user_move == "scissors" && @computer_move == "paper"
      outcome = "win"
    elsif @user_move == "rock" && @computer_move == "paper"
      outcome = "lose"
    elsif @user_move == "rock" && @computer_move == "scissors"
      outcome = "win"
    end

    @result = "#{outcome}"

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
