# frozen_string_literal: true

json.extract! complex_building, :id, :owner, :address, :units, :sqmt, :price, :user_id, :created_at, :updated_at
json.url complex_building_url(complex_building, format: :json)
