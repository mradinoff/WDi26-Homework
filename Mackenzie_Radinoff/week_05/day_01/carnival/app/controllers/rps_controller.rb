class RpsController < ApplicationController
  def game
    @throw = params[:throw].downcase
    @turns = ["rock", "paper", "scissors"]
    @computer_turns = @turns[rand(0..2)]


    @result = case params[:operator]
    when '+' then @x + @y
    when '-' then @x - @y
    end
  end
end
