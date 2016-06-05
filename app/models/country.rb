class Country < ActiveRecord::Base
  # Remember to create a migration!
  has_many :tours
end
