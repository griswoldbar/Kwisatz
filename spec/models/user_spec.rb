require 'spec_helper'

describe User do
  
  before(:each) do
    @attr = { :first_name => "John",
              :last_name => "Blobson",
              :email => "blob@example.com"
            }
    @user = User.new(@attr)
  end
  
  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end
  
  it "should require an email address" do
    no_email_user = User.new(@attr.merge(:email => ""))
    no_email_user.should_not be_valid
  end

  describe "game association" do
    it "should have a games attribute" do
      @user.should respond_to(:games)
    end
  end

  describe "rounds association" do
    it "should have a rounds attribute" do
      @user.should respond_to(:rounds)
    end
  end
  
  describe "questions association" do
    it "should have a questions attribute" do
      @user.should respond_to(:questions)
    end
  end
  
  
end
