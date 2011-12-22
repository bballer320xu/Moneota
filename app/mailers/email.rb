class Email < ActionMailer::Base
  default from: "#{APP_CONFIG['mailer_address']}"
  
  def newsletter
    @users = User.all_with_active_newsletter
    @users.each do |user|
      logger.debug "Sending Email to #{user.email}"
      mail(:to => user.email, :subject => "Newsletter")
    end
  end
end
