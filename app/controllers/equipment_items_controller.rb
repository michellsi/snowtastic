class EquipmentItemsController < ApplicationController
  def index
    if params[:category]
      @equipment_items = EquipmentItem.joins(:category).where(category: { name: params[:category] })
    else
      @equipment_items = EquipmentItem.all
    end
  end

  def show
    @equipment_item = EquipmentItem.find(params[:id])
    @booking = Booking.new
  end

  def new
    @equipment_item = EquipmentItem.new
  end

  def create
    @equipment_item = EquipmentItem.new(item_params)
    @equipment_item.user = current_user
    if @equipment_item.save
      redirect_to @equipment_item, notice: 'item was successfully created'
    else
      render :new
    end
  end

  def destroy
    @equipment_item = EquipmentItem.find(params[:id])
    @equipment_item.destroy

    redirect_to dashboard_index_path
  end

  private

  def item_params
    params.require(:equipment_item).permit(:description, :photo, :category_id, :price, :location, :title)
  end
end
