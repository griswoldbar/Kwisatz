class RoundsController < ApplicationController
  
  def show
    @round = Round.find(params[:id])
    @questions = @round.questions
    @genres=["History", "Geography", "Cinema", "Science", "Literature", "Music"]
  end

end
