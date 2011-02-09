require 'spec_helper'

describe QuestionToken do
  before(:each) do
    @attr={:position => 1, :question_id => 1, :round_id => 1}
  end
  
  describe "validations" do
    it "should have a question_id, position and a round_id" do
      QuestionToken.new(@attr.merge(:question_id => "")).should_not be_valid
      QuestionToken.new(@attr.merge(:round_id => "")).should_not be_valid
      QuestionToken.new(@attr.merge(:position => "")).should_not be_valid
    end
    
    it "should reject tokens with the same position and same round" do
      QuestionToken.create!(@attr.merge(:question_id=>2))
      lambda do
        QuestionToken.create!(@attr)
      end.should raise_error(ActiveRecord::RecordInvalid)
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
    
    it "should reject tokens with the same question and same round" do
      QuestionToken.create!(@attr.merge(:position=>2))
      lambda do
        QuestionToken.create!(@attr)
      end.should raise_error(ActiveRecord::RecordInvalid)
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
