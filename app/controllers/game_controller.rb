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

    @comp_move = ["rock", "paper", "scissors"].sample

    if @user_move == @comp_move
        @result = "tie"
      elsif @user_move == "rock" && @comp_move == "paper"
        @result = "lose"
      elsif @user_move == "rock" && @comp_move == "scissors"
        @result = "win"
      elsif @user_move == "paper" && @comp_move == "scissors"
        @result = "lose"
      elsif @user_move == "paper" && @comp_move == "rock"
        @result = "win"
      elsif @user_move == "scissors" && @comp_move == "rock"
        @result = "lose"
      elsif @user_move == "scissors" && @comp_move == "paper"
        @result = "win!"
      else
        @result = "Try again."
      end


    @result = "#{@result}"

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
