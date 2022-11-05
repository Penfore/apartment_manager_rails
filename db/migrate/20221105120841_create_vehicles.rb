class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.references :tenant, null: false, foreign_key: true
      t.references :owner, null: false, foreign_key: true
      t.string :brand
      t.string :model
      t.string :color
      t.string :license_plate

      t.timestamps
    end
  end
end
