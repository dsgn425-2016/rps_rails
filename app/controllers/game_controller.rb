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

    computer_move = rand(1..3)

    if computer_move == 1
      computer_move = "rock"
      puts "The computer chose rock"
    elsif computer_move == 2
      computer_move = "paper"
      puts "The computer chose paper"
    else
      computer_move = "scissors"
      puts "The computer chose scissors"
    end

    @computer_move = computer_move

    if @user_move == computer_move
      @result = "tie!"
    elsif @user_move == "rock" && computer_move == "paper"
      @result = "lose!"
    elsif @user_move == "rock" && computer_move == "scissors"
      @result = "win!"
    elsif @user_move == "paper" && computer_move == "rock"
      @result = "win!"
    elsif @user_move == "paper" && computer_move == "scissors"
      @result = "lose!"
    elsif @user_move == "scissors" && computer_move == "rock"
      @result = "lose!"
    elsif @user_move == "scissors" && computer_move == "paper"
      @result = "win!"
    end

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
