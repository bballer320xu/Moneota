
task :deliver_newsletter => :environment do
  desc "Checks for users that meet a date criteria, and those who want the newsletter, then sends out the email."
  puts "Starting to deliver email."
  Email.newsletter.deliver
  puts "Complete!"
end
