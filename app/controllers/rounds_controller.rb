class RoundsController < ApplicationController
   
  def show
    @round = Round.find(params[:id])
    @questions = @round.questions
    @genres=["History", "Geography", "Cinema", "Science", "Literature", "Music"]
  end

  def index
    @rounds = Round.paginate(:page => params[:page])
    @title = "All rounds"
  end
  
  def new
    @round=Round.new
    @title = "Create new round"
    30.times do
      @round.questions.new
    end
  end

  def create
    @round = Round.new(params[:round])
    30.times do |i|
      @round.questions[i].create!
    end
    if @round.save
      flash[:success] = "Round created"
      redirect_to @round
    else
      @title = "Sign up"
      render 'new'
    end
    
  end

end
