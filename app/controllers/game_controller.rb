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

if @computer_move = "rock"
  while @user_move = "scissors"
    @result = "lose"
  end
end

if @computer_move = "rock"
  while @user_move = "paper"
    @result = "win"
  end
end

if @computer_move = "rock"
  while @user_move = "rock"
    @result = "tie"
  end
end

if @computer_move = "paper"
  while @user_move = "rock"
    @result = "lose"
  end
end

if @computer_move = "paper"
  while @user_move = "paper"
    @result = "tie"
  end
end

if @computer_move = "paper"
  while @user_move = "scissors"
    @result = "win"
  end
end

if @computer_move = "scissors"
  while @user_move = "rock"
    @result = "win"
  end
end

if @computer_move = "scissors"
  while @user_move = "paper"
    @result = "lose"
  end
end

if @computer_move = "scissors"
  while @user_move = "scissors"
    @result = "tie"
  end
end

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
