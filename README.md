# nasa home 01

A quick of using rails with with mutltiple databases.
It also contains a somewhat updated gemfile that I used to include some basic
setup instructions for a TDD rails setup.

## what it contains.

A basic scaffold called personnel.
Unit testing in rspec to access the 2 database.
The necessary config files. I'll call them out below.



## how to run things.

bundle exec rspec

I was just testing out the database setup and access. There isn't any web pages
for this project. The configuation and setup are the important bits for this project.



## setup

See the gemfile for the stuff you need to install to get the thing to install correctly.
A readme is include in the gemfile so read that to see what command you need to run 
after you clone this repo.

Generally you need to run the bundle command first..
You also want to run the installation scripts for various gems. 
Notes on what to run are in the gemfile.

You also probably want to run the migrations.
rake db:migrate
rake db:migrate RAILS_ENV='test'



## files of note.

### Gemfile
Use this file as your jumping off point for the install.
Gives you instructions on what commands that you need to run.

### config/database.yml
Shows you how to setup the various databases.
Of note is the mysql part at the bottom that has the header mysql.
The stuff above the page is a basic sqlite project setup that gets generated
automatically.
Chances are that you don't have to do anything for that.

