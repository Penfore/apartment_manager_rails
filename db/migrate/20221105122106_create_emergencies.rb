class CreateEmergencies < ActiveRecord::Migration[7.0]
  def change
    create_table :emergencies do |t|
      t.references :tenant, null: false, foreign_key: true
      t.references :owner, null: false, foreign_key: true
      t.string :name
      t.string :parentage
      t.string :contact

      t.timestamps
    end
  end
end
