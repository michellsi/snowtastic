class CreateEquipmentItems < ActiveRecord::Migration[6.1]
  def change
    create_table :equipment_items do |t|
      t.string :category
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
