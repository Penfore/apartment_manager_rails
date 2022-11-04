class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.boolean :rented
      t.string :block
      t.string :number
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
