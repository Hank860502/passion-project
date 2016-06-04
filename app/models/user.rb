class User < ActiveRecord::Base
  include BCrypt
  has_many :tours, through: :wishlists

  validates :first_name, length: { in: 2..50 }
  validates :last_name, length: { in: 2..50}
  validates :user_name, presence: true, length: { in: 5..50}
  # validates :image, format: { :with => URI.regexp }

  has_secure_password

end
