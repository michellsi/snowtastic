class AddTitleToEquipmentItems < ActiveRecord::Migration[6.1]
  def change
    add_column :equipment_items, :title, :string
  end
end
