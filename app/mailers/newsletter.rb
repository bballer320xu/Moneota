class Newsletter < ActionMailer::Base
  default from: "postman@myapp.com"
  
  def newsletter(user)
    @user = user
    if (@user.newsletter)
      mail(:to => user.email, :subject => "Newsletter")
    end
  end
  

end
