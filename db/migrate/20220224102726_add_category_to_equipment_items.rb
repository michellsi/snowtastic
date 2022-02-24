class AddCategoryToEquipmentItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :equipment_items, :category, null: false, foreign_key: true
  end
end
