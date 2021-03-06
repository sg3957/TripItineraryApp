class User < ApplicationRecord
  has_many :trips
  has_many :locations, through: :trips

  has_many :places, through: :trips

  validates :username, uniqueness: { case_sensitive: false }

  has_secure_password
end
