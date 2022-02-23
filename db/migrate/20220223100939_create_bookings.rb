class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :equipment_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
