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

    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result = "have tied the computer in a game of chance"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "have dominated the competition"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "have been destroyed"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "have been destroyed"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "have dominated the competition"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "have dominated the competition"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "have been destroyed"
    end

      # ===============================================================
      # Your code goes above.
      # ===============================================================

      render("rps.html.erb")
    end
  end
