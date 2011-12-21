class Subscription < ActiveRecord::Base
  
  attr_accessible :newsletter
  
  belongs_to :user

end
