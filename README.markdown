# Beansprout #


## Introduction ##
Beansprout is a baseline Web Application template designed for Ruby on Rails 3.1.  The idea behind this project was to eliminate boilerplate work that goes into common web application designs. The monochrome palette allows one to easily interject their own color scheme.


## Features ##

* RSpec Testing 
* [Devise](https://github.com/plataformatec/devise) Authentication
* Email Subscription Management pre-configured for [Amazon SES](http://aws.amazon.com/ses/)
* Rake job & template mailer configured for monthly newsletter delivery
* Whenever gem enabled for easy cronjob management
* Baseline CSS with [960 Framework](http://960.gs/) and [Formalize](http://formalize.me/) using a 12 column grid layout
* Imageless gradients generated with the [ColorZilla Gradient Generator](http://www.colorzilla.com/gradient-editor/)
* [Postgres](http://www.postgresql.org/) enabled
* Stylized flash windows with [JQuery](http://jquery.com/) Fadeout Hide option
* Debug window in development mode to expedite bug fixing


## Setup Steps ##

1. Setup a rails development environment to your liking.  I highly recommend [Michael Hartl's Tutorial to get started](http://zfer.us/UzUCU)
2. Install [Postgres](http://www.postgresql.org/) if you don't want to use sqlite
3. Fork this into your development environment.  Steps can be found [here](http://help.github.com/fork-a-repo/).  Alternatively, you can clone if you want to use this as a baseline for your own application ```git clone git://github.com/bballer320xu/Beansprout.git```
4. Rename the config.example.yml file to config.yml.
5. Set the config.yml file appropriately.  If you do not have an SES account yet, you can still use the application without email functionality.  When you are ready to turn it on, visit the [Amazon SES Homepage](http://aws.amazon.com/ses/) and sign up
6. Run your bundler  ```
bundle install
```
7. Populate your database  
```
rake db:create  
rake db:migrate
```
8. Test it out [here](http://localhost:3000)
9. Optional: If you want to test your newsletter task, navigate to config/schedule.rb and follow the steps there.


## Screenshots ##

### A view of the home page ###
![Home Page](https://github.com/bballer320xu/Beansprout/raw/master/doc/images/1.jpg)
  
  
### Demonstrating the Flash Error Message & Login Page ###
![Signin with Error](https://github.com/bballer320xu/Beansprout/raw/master/doc/images/2.jpg)
  
  
### The Subscription Management Page ###
![Subscription Management](https://github.com/bballer320xu/Beansprout/raw/master/doc/images/3.jpg)

