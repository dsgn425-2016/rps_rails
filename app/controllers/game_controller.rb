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


        @computer_move = ["rock","paper","scissors"].sample

        if @user_move == @computer_move
      @result= "tie"
      elsif @user_move="rock"
      if @computer_move ="paper"
        @result= "lose"
    else
        @result= "win"
    end
    elsif @user_move="paper"
          if @computer_move ="rock"
            @result= "win"
        else
            @result= "lose"
        end
      elsif @user_move="scissors"
        if @computer_move ="rock"
          @result= "lose"
      else
          @result= "win"
      end
    else
        @result= "That is not a valid move"
    end


    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
