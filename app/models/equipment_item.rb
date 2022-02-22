class EquipmentItem < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :description, presence: true
  validates :category, inclusion: { in: %w[Skiing Snowboarding Accessories] }
end
