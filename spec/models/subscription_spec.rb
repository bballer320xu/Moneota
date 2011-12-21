require 'spec_helper'

describe Subscription do

  before(:each) do
    @attr = { 
      :newsletter => false
    }
  end

  it "should create a new instance given valid attributes" do
    user = User.create(@attr)
  end
  
  describe "newsletter" do
    it "should require a value" do
      invalid_subscription = Subscription.new(@attr.merge(:newsletter  => nil))
      invalid_subscription.should_not be_valid    
    end
  end
  
end
