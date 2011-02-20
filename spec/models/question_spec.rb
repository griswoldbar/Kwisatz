require 'spec_helper'

describe Question do
  before(:each) do
    @attr={:text => "Lee Harvey Oswald", :answer => "Who shot JFK?"}
    @question=Question.new(@attr)
  end
  
    describe "round associations" do
    
    before(:each) do
      @round = Factory(:round)
      @question = @round.questions.create(@attr)
    end
      
    it "should have a round attribute" do
      @question.should respond_to(:round)
    end

    it "should have the right associated round" do
      @question.round_id.should == @round.id
      @question.round.should == @round
    end
  end
  
end
