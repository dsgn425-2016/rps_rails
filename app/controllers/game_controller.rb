class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.

    computer = ["paper", "scissors", "rock"]
    @computer_move = computer.sample

    if @user_move.length == @computer_move.length
      @result = "tied"
    elsif @user_move.length == 4 && @computer_move.length ==5
      @result = "lose"
    elsif @user_move.length == 4 && @computer_move.length ==8
      @result = "win"
    elsif @user_move.length == 5 && @computer_move.length ==8
      @result = "lose"
    elsif @user_move.length == 5 && @computer_move.length ==4
      @result = "win"
    elsif @user_move.length == 8 && @computer_move.length ==4
      @result = "lose"
    elsif @user_move.length == 8 && @computer_move.length ==5
      @result = "win"
    end

    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
