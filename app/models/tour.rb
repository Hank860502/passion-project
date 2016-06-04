class Tour < ActiveRecord::Base
  # Remember to create a migration!
  has_many :users, through: :wishlists
end
