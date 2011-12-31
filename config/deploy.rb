set :application, "moneota"


# The name of your app
set :application, "moneota"
# The directory on the EC2 node that will be deployed to
set :deploy_to, "/opt/webapps/#{application}"
# The type of Source Code Management system you are using
set :scm, :git
# The location of the LOCAL repository relative to the current app
set :repository,  "."
# The way in which files will be transferred from repository to remote host
# If you were using a hosted github repository this would be slightly different
set :deploy_via, :copy

# The address of the remote host on linode (the Public DNS address)
set :location, "66.228.45.57"
# setup some Capistrano roles
role :app, location
role :web, location
role :db,  location, :primary => true

# Set up SSH so it can connect to the linode - assumes your SSH key is in ~/.ssh/id_rsa

set :user, "root"
set :password, "k71Xq>42"
set :use_sudo, true
ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "id_rsa")]

 namespace :deploy do
   task :start, :roles => :app do
     run "touch #{current_release}/tmp/restart.txt"
   end

   desc "run 'bundle install' to install Bundler's packaged gems for the current deploy"
   task :bundle_install, :roles => :app do
     run "cd #{current_release} && bundle install"
   end
   
   desc "Restart Application"
   task :restart, :roles => :app do
     run "touch #{current_release}/tmp/restart.txt"
   end
 end
