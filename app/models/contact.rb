class Contact < ActiveRecord::Base
  
  attr_accessible :name, :address, :city, :state, :email, :birthdate, :anniversary
  
  validates :name, :presence => true
  
  belongs_to :user

end
