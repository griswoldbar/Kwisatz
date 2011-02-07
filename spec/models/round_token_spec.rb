require 'spec_helper'

describe RoundToken do

  before(:each) do
    @attr = { :position => 1 }
  end

  describe "game association" do
    before(:each) do
      @game=Factory(:game)
    end
    
    it "should have the right game" do
      round_token=@game.round_tokens.build(@attr)
      round_token.game.should == @game
    end
    
  end
  
    describe "round association" do
    before(:each) do
      @round=Factory(:round)
    end
    
    it "should have the right round" do
      round_token=@round.round_tokens.build(@attr)
      round_token.round.should == @round
    end
    
  end
  
end
