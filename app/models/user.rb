class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :bookings
  has_many :clowns, through: :bookings
end
