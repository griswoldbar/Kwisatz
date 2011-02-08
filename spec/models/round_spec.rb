require 'spec_helper'

describe Round do
  before(:each) do
    @round=Round.new
  end
  

   
  describe "user association" do
      before(:each) do
        @user=Factory(:user)
      end
    
    it "should have the right creator" do
      round=@user.rounds.build(@attr)
      round.creator.should == @user
    end
    
  end
  
  describe "question_tokens association" do
    it "should have a question_tokens attribute" do
      @round.should respond_to(:question_tokens)
    end
  end
  
  describe "round tokens association" do
    it "should have a round_tokens attribute" do
      @round.should respond_to(:round_tokens)
    end
  end
  
    describe "questions association" do
    it "should have an questions attribute" do
      @round.should respond_to(:questions)
    end
  end
  
    describe "games association" do
    it "should have a games attribute" do
      @round.should respond_to(:games)
    end
  end

  
  
  
end
