 Factory.sequence :email do |n|
   "email#{rand()}#{n}@factory.com"
 end

 Factory.sequence :name do |n|
   "Test User #{rand()}#{n}"
 end
 
 
# Definitions

Factory.define :user, :class => User do |f|
  f.email { Factory.next(:email) }
  f.password  'password'
end

Factory.define :subscription, :class => Subscription do |f|
  user = Factory(:user)
  f.newsletter true
  f.user  user
end



