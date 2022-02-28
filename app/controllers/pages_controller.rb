class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @equipment_items = random_equipment
  end

  private

  def random_equipment
    EquipmentItem.order("random()").first(9)
  end
end
