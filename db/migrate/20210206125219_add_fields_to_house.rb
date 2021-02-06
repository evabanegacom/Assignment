# frozen_string_literal: true

class AddFieldsToHouse < ActiveRecord::Migration[5.2]
  def change
    change_column :houses, :price, :integer
    change_column :complex_buildings, :price, :integer
    change_column :commercial_units, :price, :integer
  end
end
