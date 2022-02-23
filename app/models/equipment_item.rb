class EquipmentItem < ApplicationRecord
  belongs_to :user
  has_many :bookings

  has_one_attached :photo

  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: %w[Skiing Snowboarding Accessories] }
end
