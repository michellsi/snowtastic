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
    @booking.booking_date = strong_params[:booking_date]

    @booking.save

    redirect_to bookings_path
  end

  private

  def strong_params
    params.require(:booking).permit(:booking_date)
  end
  def find_item
    @equipment_item = EquipmentItem.find(params[:equipment_item_id])
  end
end
