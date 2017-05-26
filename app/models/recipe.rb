class Recipe < ApplicationRecord
  has_many :comments, dependent: :destroy

  acts_as_taggable 
  acts_as_taggable_on :spirits, :citrus, :simple_syrup, :liqueur

  validates :name, presence: true, length: { minimum: 5}
  validates :description, presence: true, length: { minimum: 10 }
  validates :instructions, presence: true, length: { minimum: 20 }
  validates :tag_list, presence: true
end
