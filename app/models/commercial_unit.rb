# frozen_string_literal: true

class CommercialUnit < ApplicationRecord
  belongs_to :manager, class_name: 'User', foreign_key: :user_id
  has_one_attached :icon
  validates :price, presence: true, length: { minimum: 3 }
end
