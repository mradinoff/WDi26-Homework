class MagicController < ApplicationController
  def mindreader
    possible_answers = ["Bet on it", "Don't ignore the obvious", "Be delightfully sure of it",
    "Prepare for the unexepected", "Trust your intuition", "Adopt an adventurious attitude",
    "Startling events may occur as a result"];
    @answer = possible_answers[rand(possible_answers.length-1)]
  end

end
