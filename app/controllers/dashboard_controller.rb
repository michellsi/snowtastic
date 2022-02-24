class DashboardController < ApplicationController
  def index
    @bookings = current_user.bookings
    @equipment_items = current_user.equipment_items
  end
end
