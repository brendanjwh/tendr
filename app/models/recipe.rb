class Recipe < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :ingredients 

  acts_as_taggable 
  acts_as_taggable_on :spirits, :citrus, :simple_syrup, :liqueur

  validates :name, presence: true, length: { minimum: 5}
  validates :ingredients, presence: true, length: { minimum: 10 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :instructions, presence: true, length: { minimum: 20 }
  validates :tags, presence: true, length: { minimum: 10 }
end
