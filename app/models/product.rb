class Product < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :price, presence: true
  validates :address, presence: true

  has_many :bookings
  has_many :users, through: :bookings
end
