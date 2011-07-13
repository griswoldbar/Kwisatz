class RoundsController < ApplicationController
   
  def show
    @title = "Round #{params[:id]}"
    @round = Round.find(params[:id])
    @questions = @round.questions
    @genres=["History", "Geography", "Cinema", "Science", "Literature", "Music"]
  end
  
  def add_category
    
    
  end

  def index
    @rounds = Round.paginate(:page => params[:page])
    @title = "All rounds"
  end
  
  def new
    @round=Round.new
    @title = "Create new round"
  end
  
  def add_questions
    question_count=@round.questions_per_category*@round.category_count
    question_count.times {@round.questions.new}
    render 'edit'
  end
  
  def edit
    @round=Round.find(params[:id])
  end
  
  def update
    @round=Round.find(params[:id])
    if @round.update_attributes(params[:round])
      redirect_to @round, :flash => { :success => "Round updated." } 
    end
  end
  
  def make_questions

  end

  def create
   @round = Round.new(params[:round])
    if @round.save
      render 'make_questions', :layout => false
    else
      @title = "Sign up"
      render 'new'
    end
  end
end