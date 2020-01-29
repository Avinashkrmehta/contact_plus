class CreateVillages < ActiveRecord::Migration[5.2]
  def change
    create_table :villages do |t|
      t.string :code
      t.string :name
      t.references :panchayat, foreign_key: true

      t.timestamps
    end
  end
end
