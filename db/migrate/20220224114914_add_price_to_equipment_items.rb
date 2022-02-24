class AddPriceToEquipmentItems < ActiveRecord::Migration[6.1]
  def change
    add_column :equipment_items, :price, :decimal, precision: 8, scale: 2
  end
end
