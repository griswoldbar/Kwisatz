class RoundquestionsController < ApplicationController
  def new

  end

  def create
   category_name=params[:category][:category_name]
   if category_exists?(category_name)
     cat_id=Category.find_by_name(category_name).id
   else
     cat=Category.new(:name => category_name)
     cat.save
     cat_id=cat.id
   end
   
   params[:question][:category_id]=cat_id 
   
   round_id=params[:roundquestion][:round_id]
    
   @question = Question.new(params[:question])
    if @question.save
      q_id=@question.id
      roundquestion = Roundquestion.new(:question_id => q_id, :round_id => round_id)
      roundquestion.save
      if categoryround_not_exists?(round_id,cat_id)
        categoryround = Categoryround.new(:round_id => round_id, :category_id => cat_id)
        categoryround.save
      end
      render :nothing => true
    else
      render 'home'
    end
  end
 
  private
    
    def category_exists?(cat_name)
      !Category.find_by_name(cat_name).nil?
    end
  
    def categoryround_not_exists?(round_id, category_id)
      Categoryround.find_by_round_id_and_category_id(round_id,category_id).nil?
    end

end

