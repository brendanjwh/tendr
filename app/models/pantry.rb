class Pantry < ApplicationRecord
  belongs_to :bartender, class_name :User
  has_many :ingredients
end
