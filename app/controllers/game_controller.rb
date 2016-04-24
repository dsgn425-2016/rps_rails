class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ====================================================
    # @computer_move will sample [rock, paper, scissors] and pick a value at random. @user_move will be dictated by what the user picks. The results for a tie and all winning combinations are coded below. Any other result is considered a loss, and covered by the "else" command.
    # ====================================================

    @computer_move = ["rock", "paper", "scissors"].sample
    if @user_move == @computer_move
      @result = "tied"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "won"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "won"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "won"
    else
      @result = "lose"
    end

    render("rps.html.erb")
  end
end
