class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  validates :email,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i } 

  has_one :subscription, :dependent => :destroy
  has_many :contacts, :dependent => :destroy
  
  def self.all_with_active_newsletter
    User.all :joins => :subscription, :conditions => {:subscriptions => {:newsletter => true}}
  end
  
  
end

