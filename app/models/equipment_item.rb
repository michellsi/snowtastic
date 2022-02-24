class EquipmentItem < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookings

  has_one_attached :photo

  validates :photo, presence: true
  validates :description, presence: true
  validates :category, presence: true
end
