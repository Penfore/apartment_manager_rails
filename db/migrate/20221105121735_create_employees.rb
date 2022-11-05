class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.references :tenant, null: false, foreign_key: true
      t.references :owner, null: false, foreign_key: true
      t.string :name
      t.string :role
      t.string :shift

      t.timestamps
    end
  end
end
