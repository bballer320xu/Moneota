# Beansprout #

Beansprout is a baseline Web Application template designed for Ruby on Rails 3.1.  The idea behind this project was to eliminate boilerplate work that goes into common web application designs. 

If your application requires user authentication, a simple grid layout, email subscription delivery and a wireframe CSS layout that can be extended.  

## Features ##

* RSpec Testing 
* Devise Authentication
* Email Subscription Management pre-configured for Amazon SES
* Rake job & template mailer configured for monthly newsletter delivery
* Whenever gem enabled for easy cronjob management
* Baseline CSS with [960 Framework](http://960.gs/) and [Formalize](http://formalize.me/) using a 12 column grid layout
* Postgres enabled
* Debug window in development mode to expedite bug fixing


## Setup Steps ##

1. Setup a rails development environment to your liking
2. Install Postgres if you don't want to use sqlite
3. Fork this into your development environment.  Steps can be found [here](http://help.github.com/fork-a-repo/).  Alternatively, you can clone if you want to use this as a baseline for your own application ```git clone git://github.com/bballer320xu/Beansprout.git```
4. Rename the config.yml.example file to config.yml.
5. Set the config.yml file appropriately.  If you do not have an SES account yet, you can still use the application without email functionality.  When you are ready to turn it on, visit the [Amazon SES Homepage](http://aws.amazon.com/ses/) and sign up
6. Run your bundler  ```
bundle install
```
7. Populate your database  ```
rake db:create  
rake db:migrate
```
8. Test it out [here](http://localhost:3000)


## Screenshots ##
![Alt text](/doc/images/1.jpg)
![Alt text](/doc/images/2.jpg)
![Alt text](/doc/images/3.jpg)
