class Tour < ActiveRecord::Base
  # Remember to create a migration!
  has_many :users, through: :wishlists
  has_many :wishlists
  has_many :images
  belongs_to :country
end
