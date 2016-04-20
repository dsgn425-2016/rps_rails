class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here
    valid_choices = ["rock", "paper", "scissors"]
    ai_choice = valid_choices.sample


    if @user_move == "rock" && ai_choice == "paper"
      result = "lose"
    elsif @user_move == "rock" && ai_choice == "scissors"
      result = "win"
    elsif @user_move == "paper" && ai_choice == "rock"
      result = "win"
    elsif @user_move == "paper" && ai_choice == "scissors"
      result = "lose"
    elsif @user_move == "scissors" && ai_choice == "rock"
      result = "lose"
    elsif @user_move == "scissors" && ai_choice == "paper"
      result = "win"
    elsif @user_move == ai_choice
      result = "tie"
    end


      # In the end, make sure you assign the correct values to the
      #   following two variables:

      @computer_move = "#{ai_choice}"

      @result = "#{result}"
      # ===============================================================
      # Your code goes above.
      # ===============================================================

      render("rps.html.erb")
  end
end
