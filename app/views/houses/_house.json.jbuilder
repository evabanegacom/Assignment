# frozen_string_literal: true

json.extract! house, :id, :owner, :address, :rooms, :sqmt, :floors, :air_condition, :price, :user_id, :created_at, :updated_at
json.url house_url(house, format: :json)
