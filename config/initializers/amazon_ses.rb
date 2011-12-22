ActionMailer::Base.add_delivery_method :ses, AWS::SES::Base,
  :access_key_id     => "#{APP_CONFIG['ses_access_key_id']}",
  :secret_access_key => "#{APP_CONFIG['ses_secret_access_key']}"