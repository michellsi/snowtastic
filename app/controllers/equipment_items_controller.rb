class EquipmentItemsController < ApplicationController
  def index
    if params[:category]
      @equipment_items = EquipmentItem.where(category: params[:category])
    else
      @equipment_items = EquipmentItem.all
    end
  end

  def show
    @equipment_item = EquipmentItem.find(params[:id])
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
    params.require(:equipment_item).permit(:category, :description, :photo)
  end
end
