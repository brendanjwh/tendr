class Tag < ApplicationRecord
  has_many :users
  has_many :recipes
end
