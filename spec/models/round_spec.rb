require 'spec_helper'

describe Round do
  before(:each) do
    @attr={:name => "History"}
    @round=Round.new(@attr)
  end
  
  it "should have a questions attribute" do
    @round.should respond_to(:questions)
    
  end
end
