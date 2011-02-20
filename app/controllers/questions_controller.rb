class QuestionsController < ApplicationController

  def show
    @question=Question.find(params[:id])
  end
  
  def reveal
    @question=Question.find(params[:id])
  end
  
end
