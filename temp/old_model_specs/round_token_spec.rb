require 'spec_helper'

describe RoundToken do

  before(:each) do
    @attr = { :position => 1, :round_id => 1, :game_id => 1 }
  end

  describe "validations" do
    
    it "should have a game_id, position and a round_id" do
      RoundToken.new(@attr.merge(:game_id => "")).should_not be_valid
      RoundToken.new(@attr.merge(:round_id => "")).should_not be_valid
      RoundToken.new(@attr.merge(:position => "")).should_not be_valid
    end
    
    it "should reject duplicate game/position combos" do
      RoundToken.create!(@attr.merge(:round_id=>2))
      lambda do
        RoundToken.create!(@attr)
      end.should raise_error(ActiveRecord::RecordInvalid)    
    end    
    
  end
  
  
  describe "game association" do
    before(:each) do
      @game=Factory(:game)
    end
    
    it "should have the right game" do
      round_token=@game.round_tokens.build(@attr)
      round_token.game.should == @game
    end
    
    it "should reject duplicate game/round combos" do
      RoundToken.create!(@attr.merge(:position=>2))
      lambda do
        RoundToken.create!(@attr)
      end.should raise_error(ActiveRecord::RecordInvalid)    
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
