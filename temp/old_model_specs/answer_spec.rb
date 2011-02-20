require 'spec_helper'

describe Answer do
  before(:each) do
    @attr={:text=>"Lee Harvey Oswald",
           :veracity => true}
  end
  
  describe "question associations" do
  
    before(:each) do
      @question=Factory(:question)
      @answer=@question.answers.create!(@attr)
    end
  
    it "should have a question id" do
      no_question_answer = Answer.new(@attr.merge(:question_id => ""))
      no_question_answer.should_not be_valid
    end
    
    it "should have the right question id" do
      @answer.question.should == @question
    end
    
  end
  
end
