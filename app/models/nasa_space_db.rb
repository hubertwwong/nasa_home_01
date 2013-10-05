class NasaSpaceDB < ActiveRecord::Base
  self.abstract_class = true
  establish_connection "nasa_space_#{Rails.env}"
end