require 'spec_helper'

describe Contact do
  before(:each) do
    @attr = { 
      :name => "Example User", 
      :email => "user@example.com",
      :birthdate  => 1970-10-10 00:00:00 UTC,
      :anniversary  => 2010-10-10 00:00:00 UTC
      :address => "22 Everyman Road",
      :city => "Superville"
      :state => "Massachusetts"
    }
  end

  it "should create a new instance given valid attributes" do
    user = User.create(@attr)
  end
    
  describe "email address" do
    it "should be required" do
        no_email_user = User.new(@attr.merge(:email  => ""))
        no_email_user.should_not be_valid
    end
    
    it "should reject duplicates" do  
      user1 = User.new(@attr)
      user1.save
      user2 = User.new(@attr)
      user2.should_not be_valid
    end
    
    it "should accept a valid format" do
      addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
      addresses.each do |address|
        valid_email_user = User.new(@attr.merge(:email  => address))
        valid_email_user.should be_valid    
      end
    end

    it "should reject an invalid format" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
      addresses.each do |address|
        valid_email_user = User.new(@attr.merge(:email  => address))
        valid_email_user.should_not be_valid    
      end    
    end

  end
  
  describe "password" do
    it "should be required" do
      user_blank_pwd = User.new(@attr.merge(:password  => "", :password_confirmation  => ""))
      user_blank_pwd.should_not be_valid
    end
  
    it "should match the password confirmation" do
      user_blank_pwd = User.new(@attr.merge(:password  => "a", :password_confirmation  => "b"))
      user_blank_pwd.should_not be_valid
    end
    it "should be rejected if it is too short" do
      user_blank_pwd = User.new(@attr.merge(:password  => "a", :password_confirmation  => "a"))
      user_blank_pwd.should_not be_valid
    end
  end
end
