class CreateDistricts < ActiveRecord::Migration[5.2]
  def change
    create_table :districts do |t|
      t.string :code
      t.string :name
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
