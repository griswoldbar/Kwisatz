require 'spec_helper'

describe Question do
  before(:each) do
    @user=Factory(:user)
    @attr = {:genre => "History", :text => "Who shot JFK?"}
    @question=Factory(:question)
  end
  
#it does not need to have a user_id
  
  describe "user association" do
    
    it "should have the right user" do
      question=@user.questions.build(@attr)
      question.creator.should == @user
    end
    
  end
  
  describe "round association" do
    it "should have a rounds attribute" do
      @question.should respond_to(:rounds)
    end
  end
  
  describe "answers association" do
    it "should have an answers attribute" do
      @question.should respond_to(:answers)
    end
  end  
  
  describe "question tokens association" do
    it "should have a question_tokens attribute" do
      @question.should respond_to(:question_tokens)
    end
  end  
  
end
