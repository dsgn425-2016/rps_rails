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


    if @user_move == @computer_move
    elsif @user_move == "rock" && @computer_move =="paper"
    elsif @user_move == "rock" && @computer_move =="sissors"
    elsif @user_move == "paper" && @computer_move =="rock"
    elsif @user_move == "paper" && @computer_move =="sissors"
    end
    #  ===============================================================
    #     Your code goes above.
    #     ===============================================================

    render("rps.html.erb")
  end
end
