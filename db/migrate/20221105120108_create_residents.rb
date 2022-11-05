class CreateResidents < ActiveRecord::Migration[7.0]
  def change
    create_table :residents do |t|
      t.references :owner, null: false, foreign_key: true
      t.references :tenant, null: false, foreign_key: true
      t.string :name
      t.string :parentage
      t.date :birthday

      t.timestamps
    end
  end
end
