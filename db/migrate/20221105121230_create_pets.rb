class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.references :tenant, null: false, foreign_key: true
      t.references :owner, null: false, foreign_key: true
      t.string :name
      t.string :specie
      t.string :breed
      t.string :color

      t.timestamps
    end
  end
end
