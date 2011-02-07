require 'spec_helper'

describe QuestionToken do
  before(:each) do
    @attr={:position => 1}
  end
  
  describe "validations" do
    it "should have a question_id" do
      QuestionToken.new(@attr).should_not be_valid
    end    
    
  end
  
  describe "question association" do
    before(:each) do
      @question=Factory(:question)
    end
    
    it "should have the right question id" do
      question_token=@question.question_tokens.build(@attr)
      question_token.question.should == @question
    end
    
  end
  
  describe "round association" do
    before(:each) do
      @round=Factory(:round)
    end
    
    it "should have the right round id" do
      question_token=@round.question_tokens.build(@attr)
      question_token.round.should == @round 
    end
    
  end
  
end
