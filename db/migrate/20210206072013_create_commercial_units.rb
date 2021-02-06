# frozen_string_literal: true

class CreateCommercialUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :commercial_units do |t|
      t.string :owner
      t.text :address
      t.integer :shops
      t.integer :sqmt
      t.integer :parking
      t.decimal :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
