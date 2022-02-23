class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :equipment_item
end
