class RemoveCategoryFromEquipmentItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :equipment_items, :category, :string
  end
end
