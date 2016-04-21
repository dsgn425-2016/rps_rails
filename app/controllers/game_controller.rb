class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

random_move = rand(1..3)

if (random_move == 1)
  random_move_string = 'rock'
elsif (random_move == 2)
  random_move_string = 'paper'
else
  random_move_string = 'scissors'
end

if (random_move_string == @user_move)
  result_calc = 'tie'
elsif (random_move_string == 'rock')
  if (@user_move == 'paper')
    result_calc = 'win'
  else
    result_calc = 'lose'
  end
elsif (random_move_string == 'paper')
  if (@user_move == 'rock')
    result_calc = 'win'
  else
    result_calc = 'lose'
  end
else
  if (@user_move == 'paper')
    result_calc = 'win'
  else
    result_calc = 'lose'
  end
end


    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @computer_move = random_move_string

    @result = result_calc

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
