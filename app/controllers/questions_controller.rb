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
    @question=Question.new
    
  end

  def create
   @question = Question.new(params[:question])
    if @question.save
      render :nothing => true
    else
      render 'home'
    end
  end
    
  

  
end
