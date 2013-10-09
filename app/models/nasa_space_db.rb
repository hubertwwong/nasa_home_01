class NasaSpaceDB < ActiveRecord::Base
  # absctact so you don't connect twice when you use inheritance.
  self.abstract_class = true
  # making the actual db connections.
  #
  # note the Rails.env.
  # if you set up the db with test, development, and production
  # this basically will allow the rails project to match up the correct database
  # when you use the rails_env variable.
  # take it out if you don't have this setup.
  #
  # establish connection needs the database name.
  establish_connection "nasa_space_#{Rails.env}"
end