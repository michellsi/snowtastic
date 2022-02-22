class EquipmentItemsController < ApplicationController
  def index
    @equipment_items = EquipmentItem.all
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

  private
  def item_params
    params.require(:equipment_item).permit(:category, :description)
  end
end
