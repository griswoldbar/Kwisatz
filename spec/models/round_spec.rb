require 'spec_helper'

describe Round do
   
  describe "user association" do
      before(:each) do
        @user=Factory(:user)
      end
    
    it "should have the right creator" do
      round=@user.rounds.build(@attr)
      round.creator.should == @user
    end
    
  end
  
end
