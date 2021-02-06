# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :houses
  has_many :complex_buildings
  has_many :commercial_units

  validates :name, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
end
