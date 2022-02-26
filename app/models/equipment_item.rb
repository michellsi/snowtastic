class EquipmentItem < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookings, dependent: :destroy

  has_one_attached :photo

  validates :photo, :title, :location, :price, :category, presence: true
  validates :description, presence: true
  validates :title, length: { in: 5..20 }
end
