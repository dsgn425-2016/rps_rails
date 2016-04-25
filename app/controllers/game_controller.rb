class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================
    @move=["rock","paper","scissors"]
    @computer_make_move=@move.sample

    if @user_move.downcase==@computer_make_move.downcase
  @result_mem="Its a tie"
elsif @user_move.downcase=="paper" && @computer_make_move.downcase=="rock"
  @result_mem=" win :) "
elsif @user_move.downcase=="paper" && @computer_make_move.downcase=="scissors"
  @result_mem=" lose :( "
elsif @user_move.downcase=="scissors" && @computer_make_move.downcase=="rock"
  @result_mem=" lose :( "
elsif @user_move.downcase=="scissors" && @computer_make_move.downcase=="paper"
  @result_mem=" win :) "
elsif @user_move.downcase=="rock" && @computer_make_move.downcase=="paper"
  @result_mem=" lose :( "
elsif @user_move.downcase=="rock" && @computer_make_move.downcase=="scissors"
  @result_mem=" win :) "
end

    @computer_move="#{@computer_make_move}"

    @result ="#{@result_mem}"

    render("rps.html.erb")
  end
end
