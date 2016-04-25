class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]
    @moves=["rock","paper","scissors"]
    @computer_movesave = @moves.sample

      if @user_move.downcase==@computer_movesave.downcase
        @resultsave="TIE"
      elsif (@user_move.downcase=="scissors" && @computer_movesave.downcase=="rock") || (@user_move.downcase=="rock" && @computer_movesave.downcase=="paper")||(@user_move.downcase=="paper" && @computer_movesave.downcase=="scissors")
      @resultsave= "LOSE"
      elsif (@user_move.downcase=="scissors" && @computer_movesave.downcase=="paper") ||(@user_move.downcase=="paper" && @computer_movesave.downcase=="rock") ||(@user_move.downcase=="rock" && @computer_movesave.downcase=="scissors")
      @resultsave="WIN"
    end

    @computer_move = "#{@computer_movesave}"
    @result = "#{@resultsave}"

  render("rps.html.erb")
  end
end
