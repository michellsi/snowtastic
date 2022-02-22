class EquipmentItemsController < ApplicationController
  def index
    @equimpent_items = EquipmentItem.all
  end


end
