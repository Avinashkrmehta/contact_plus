class CreatePanchayats < ActiveRecord::Migration[5.2]
  def change
    create_table :panchayats do |t|
      t.string :code
      t.string :name
      t.references :block, foreign_key: true

      t.timestamps
    end
  end
end
