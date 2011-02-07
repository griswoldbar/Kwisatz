require 'spec_helper'

describe Question do
  before(:each) do
    @user=Factory(:user)
    @attr = {:genre => "History", :text => "Who shot JFK?"}
  end
  
#it does not need to have a user_id
  
  describe "user association" do
    
    it "should have the right user" do
      question=@user.questions.build(@attr)
      question.creator.should == @user
    end
    
  end
  
end
