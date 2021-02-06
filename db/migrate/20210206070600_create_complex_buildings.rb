class CreateComplexBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :complex_buildings do |t|
      t.string :owner
      t.text :address
      t.integer :units
      t.integer :sqmt
      t.decimal :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
