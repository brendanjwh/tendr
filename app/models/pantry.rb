class Pantry < ApplicationRecord
  has_one :user
  has_many :ingredients
end
