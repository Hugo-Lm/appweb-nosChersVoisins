class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :email, presence: true
  validates :password, presence: true

  validates :email, uniqueness: true

  has_many :bookings
  has_many :products
  has_many :booked_products, through: :bookings, class_name: "Product", source: :product
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
