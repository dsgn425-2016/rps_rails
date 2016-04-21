class GameController < ApplicationController
  def rps
    @user_move = params[:the_move].upcase

    # This is MATT KIEPURA's RPS game for HWK 3 sbumission

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    userMove = params[:the_move]

    compMove = ["rock", "paper", "scissors"].sample
    @computer_move = compMove.capitalize


    if userMove == compMove   # TIE
      @result = "TIE"
    elsif userMove == "rock" && compMove == "paper"   # COMP wins
      @result = "LOSE. Computer wins."
    elsif userMove == "rock" && compMove == "scissors"   # USER wins
      @result = "WIN!!"
    elsif userMove == "paper" && compMove == "rock"   # USER wins
      @result = "WIN!!"
    elsif userMove == "paper" && compMove == "scissors"   # COMP wins
      @result = "LOSE. Computer wins."
    elsif userMove == "scissors" && compMove == "rock"   # COMP wins
      @result = "LOSE. Computer wins."
    elsif userMove == "scissors" && compMove == "paper"   # USER wins
      @result = "WIN!!"
    else    # User must have entered "quit" or another invalid entry
      @result = "<Bug Check> Invalid entry somehow"
    end

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
