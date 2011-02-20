require 'spec_helper'

describe Game do

  before(:each) do
    @attr = { :name => "The Name of the Game"}
    @game = Game.new(@attr)
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

  describe "round_tokens association" do
    it "should have a round_tokens attribute" do
      @game.should respond_to(:round_tokens)
    end
  end
  
  describe "rounds association" do
    it "should have a rounds attribute" do
      @game.should respond_to(:rounds)
    end
  end

end