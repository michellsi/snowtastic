class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :equipment_items
  has_many :bookings
  # rentals of my equipment items
  has_many :rentals, through: :equipment_items, source: :bookings

  has_one_attached :avatar
end
