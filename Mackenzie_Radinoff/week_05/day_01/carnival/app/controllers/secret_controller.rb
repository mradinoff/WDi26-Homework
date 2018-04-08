class SecretController < ApplicationController
  def reveal
    @number = (1..10).to_a
    @real_number = @number[rand(1..10)]
    @str = ""
    if @real_number === params[:number].to_i
      @str = "You are correct the number is"
    end
    if @str === ""
      @str = "You are incorrect, the number is"
    end
  end
end
