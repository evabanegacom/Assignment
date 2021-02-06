# frozen_string_literal: true

class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :owner
      t.text :address
      t.integer :rooms
      t.integer :sqmt
      t.integer :floors
      t.boolean :air_condition
      t.decimal :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
