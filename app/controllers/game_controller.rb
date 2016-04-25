class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here
    moves = ["rock","paper","scissors"]
    rando = rand(2)
    # In the end, make sure you assign the correct values to the
    #   following two variables:
    comp_move = moves[rando]
    human_win = "you win"
    comp_win = "computer wins"

    move = @user_move

    @computer_move = comp_move
    result = ''

    if move == "rock" && comp_move == "paper" || move == "paper" && comp_move == "scissors" || move == "scissors" && comp_move == "rock"
      result = comp_win
    elsif move == "rock" && comp_move == "scissors" || move == "paper" && comp_move == "rock" || move =="scissors" && comp_move =="paper"
      result = human_win
    elsif move == comp_move
      result = "It's a tie!"
    end




    @result = result

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
