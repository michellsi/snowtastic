class AddLocationToEquipmentItems < ActiveRecord::Migration[6.1]
  def change
    add_column :equipment_items, :location, :string
  end
end
