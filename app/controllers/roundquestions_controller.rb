class RoundquestionsController < ApplicationController
  def new

  end

  def create
   @question = Question.new(params[:question])
    if @question.save
      round_id=params[:question][:round_id]
      q_id=@question.id
      @roundquestion = Roundquestion.new(:question_id => q_id, :round_id => params[:roundquestion][:round_id])
      @roundquestion.save
      render :nothing => true
    else
      render 'home'
    end
  end

end
