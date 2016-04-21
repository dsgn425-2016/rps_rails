class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]
    comp_choice = ["rock", "paper", "scissors"].sample
    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here
    # In the end, make sure you assign the correct values to the
    #   following two variables:
    if @user_move == comp_choice
      result = "tie"
    elsif @user_move == "paper" && comp_choice == "rock"
      result = "win"
    elsif @user_move == "paper" && comp_choice == "scissors"
      result "lose"
    elsif @user_move == "rock" && comp_choice == "paper"
        result = "lose"
    elsif @user_move == "rock" && comp_choice == "scissors"
      result = "win"
  elsif @user_move == "scissors" && comp_choice == "rock"
        result = "lose"
    elsif @user_move == "scissors" && comp_choice == "paper"
      result = "win"
    end

@computer_move = "#{comp_choice}"
@result = "#{result}"

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
