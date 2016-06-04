class Tour < ActiveRecord::Base
  # Remember to create a migration!
  has_many :users, through: :wish_list
end
