class EquipmentItem < ApplicationRecord
  belongs_to :user
  validates :category, :description, presence: true
end
