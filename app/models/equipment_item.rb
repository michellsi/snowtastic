class EquipmentItem < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :category, :description, presence: true
end
