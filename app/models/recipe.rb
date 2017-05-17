class Recipe < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5}
  validates :ingredients, presence: true, length: { minimum: 10 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :instructions, presence: true, length: { minimum: 20 }
  validates :tags, presence: true, length: { minimum: 10 }
end
