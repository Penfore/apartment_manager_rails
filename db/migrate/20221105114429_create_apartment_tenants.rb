class CreateApartmentTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :apartment_tenants do |t|
      t.references :apartment, null: false, foreign_key: true
      t.references :tenant, null: false, foreign_key: true
      t.boolean :current

      t.timestamps
    end
  end
end
