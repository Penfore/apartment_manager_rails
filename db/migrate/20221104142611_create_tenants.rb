class CreateTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :rg
      t.date :birthday
      t.string :email
      t.string :phone
      t.boolean :authorize_wpp
      t.date :moving_date
      t.string :company_name
      t.string :contact
      t.date :end_moving_date
      t.string :company_phone
      t.string :contact_name
      t.string :cnpj

      t.timestamps
    end
  end
end
