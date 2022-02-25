class DashboardController < ApplicationController
  def index
    @bookings = current_user.bookings
    @equipment_items = current_user.equipment_items
    @rentals = current_user.rentals
  end
end
