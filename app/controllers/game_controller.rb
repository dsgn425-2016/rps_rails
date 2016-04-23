class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    computer = ['rock', 'paper', 'scissors']

    @computer_move = computer[rand(0..2)]

        if (@user_move == @computer_move)
          @result = "tie"

        elsif((@user_move == "rock" && @computer_move == "paper")||(@user_move == "paper" && @computer_move == "scissors") || (@user_move == "scissors" && @computer_move == "rock"))
          @result = "lose"

        elsif((@user_move == "rock" && @computer_move == "scissors")||(@user_move == "paper" && @computer_move == "rock") || (@user_move == "scissors" && @computer_move == "paper"))
          @result = "win"

        end

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    # @computer_move = ["rock", "paper", "scissors"].sa...

    # @computer_move = "Replace this string with the correct value."

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
