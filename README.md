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

### Configuration

#### Gemfile

Use this file as your jumping off point for the install.
Gives you instructions on what commands that you need to run.

#### config/database.yml

Shows you how to setup the various databases.

The stuff above the page is a basic sqlite project setup that gets generated
automatically.
Chances are that you don't have to do anything for that.
If you rails new a project, you get those settings.

Of note is the mysql part at the bottom that has the header mysql.
Note the development, test, and production suffixes. If you plan on using rails
ENV variables, you probably want to name your databaes in such a fashion.

#### spec/spec_helper.rb

Setting things up so rspec works.
The 3 things of interst is the require fields. Make sure you require all
of the necessary gems. This is the top part of the gem.

RSpec geneators.
I think rspec removed the ability to generate the spec files when you do
'rails g model foo' so you have to add some code here to fix that.

Factory girl support. The code allows to use some DSL for factory girl.

#### app/models/nasa_space_db.rb

A helper class that basically allows you to add support in your models for
different databases. The abstract line basically makes sure that you are not
initing the code twice. The second line makes the connection. The rails_env variable
is used to complete the database name. If you setup the external db with the
_test, _development, _production naming convention. You can use that variable.

Other things of note, this file is inherit from active record. So when your 
models inherit from this class, you get all of the active record methods helpers.

#### app/models/station.rb

A simple use of the external db. All you really have to do assuming things are
setup is to inherit from the nasa_space_db.rb file. I didn't do it here but
you probably want to add some sort of suffix or a directory to know what db you
are working in.

#### spec/models/station_spec.rb

A basic demo on using the external database. Baiscally you can just treat
it like active record. Of note, once you create a model, you can access the
column names using the dot notation.

The db contains a single table called station.
It has 3 columns.
id, name, description.

#### spec/models/personnel_spec.rb
I also include a basic test of the standard db to show that both databases
are hooked up at in use at the same time.