class Subscription < ActiveRecord::Base
  
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :newsletter
  
  validates :newsletter, :presence => true
  belongs_to :user

end
