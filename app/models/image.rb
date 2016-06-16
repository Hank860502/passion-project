class Image < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :tour
end
