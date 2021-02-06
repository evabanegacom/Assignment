# frozen_string_literal: true

class House < ApplicationRecord
  belongs_to :manager, class_name: 'User', foreign_key: :user_id
  has_one_attached :icon
end
