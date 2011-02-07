require 'spec_helper'

describe Game do

  before(:each) do
    @attr = { :name => "The Name of the Game"}
  end
  describe "user association" do
    before(:each) do
      @user = Factory(:user)
    end
    
    it "should have the right associated user" do
      game=@user.games.build(@attr)
      game.creator.should == @user
    end
    
  end

end