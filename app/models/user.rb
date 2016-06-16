class User < ActiveRecord::Base
  include BCrypt
  has_many :tours, through: :wishlists
  has_many :wishlists
  has_many :votes
  has_many :comments

  validates :first_name, length: { in: 2..50 }
  validates :last_name, length: { in: 2..50}
  validates :user_name, presence: true, length: { in: 5..50}

  has_secure_password

end
