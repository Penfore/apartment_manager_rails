class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :rg
      t.date :birthday
      t.string :email
      t.string :phone
      t.boolean :authorized_wpp

      t.timestamps
    end
  end
end
