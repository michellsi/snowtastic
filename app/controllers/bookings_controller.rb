class BookingsController < ApplicationController
  before_action :find_item, only: [:new, :create]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.equipment_item = @equipment_item
    @booking.user = current_user

    @booking.save

    redirect_to bookings_path
  end

  private

  def find_item
    @equipment_item = EquipmentItem.find(params[:equipment_item_id])
  end
end
