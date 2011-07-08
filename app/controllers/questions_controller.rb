class QuestionsController < ApplicationController
  
  def show
    @question=Question.find(params[:id])
    render :layout => false
  end
  
  def reveal
    @question=Question.find(params[:id])
    render :layout => false
  end
  
  def new
    
    
  end

  def create
    
    
  end
  
end
