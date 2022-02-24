class Category < ApplicationRecord
  has_many :equipment_items

  validates :name, presence: true, inclusion: { in: %w[Skiing Snowboarding Accessories] }
end
