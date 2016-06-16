class Country < ActiveRecord::Base
  # Remember to create a migration!
  has_many :tours
  # has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "http://www.northwest.com.tw/northwest23223339/nw-logo-2.gif"
end
