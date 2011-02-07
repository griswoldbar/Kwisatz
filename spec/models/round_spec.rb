require 'spec_helper'

describe Round do
  before(:each) do
    @attr={:position => 1}
  end
  
  describe "game association" do
    before(:each) do
      @game=Factory(:game)
    end
    
    it "should have the right game" do
      round=@game.rounds.build(@attr)
      round.game.should == @game
    end
    
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
  
end
