class Tag < ApplicationRecord
  has_many :users, :recipes
end
