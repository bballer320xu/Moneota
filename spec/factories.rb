 Factory.sequence :email do |n|
   "email#{n}@factory.com"
 end

 Factory.sequence :name do |n|
   "Test User #{n}"
 end
 
 
# Definitions

Factory.define :user, :class => User do |f|
  f.email { Factory.next(:email) }
  f.password  'password'
end

