class CreateCondominia < ActiveRecord::Migration[7.0]
  def change
    create_table :condominia do |t|
      t.string :name

      t.timestamps
    end
  end
end
