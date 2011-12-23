#   
#   - Automated Mailer Configuration -
#
#   1. Register your email address in the SES account.
#   2. Set the email address in config.yml.
#   3. Deploy the application and run "bundle install".
#   4. Run this command on the server:  "whenever --update-crontab beansprout --set environment=production"
#   5. Run this command to verify the cronjob is configured: crontab -l
#   6. Uncomment the method below to start processing. Change the duration to your liking
#
#   FYI: The rake task is located in lib/tasks/mailer.rake.  Put additional email methods and automated tasks there.
#
#
#   --------------------------------------------------------
#   Deliver the newsletter each month
#   --------------------------------------------------------
#   every 1.month do    
#     rake "deliver_newsletter"                 
#   end
#   -------------------------------------------------------- 
#