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
  
end
