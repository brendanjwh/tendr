class Recipe < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user


  acts_as_taggable 
  acts_as_taggable_on :spirits, :citrus, :simple_syrup, :liqueur

  validates :name, presence: true, length: { minimum: 5}
  validates :description, presence: true, length: { minimum: 10 }
  validates :instructions, presence: true, length: { minimum: 20 }
  # validates :tags, presence: true

  before_save :downcase_tag

  def tag_list
    tags.map(&:name).join(", ")
  end

  def downcase_tag
    self.tags do |tag_collection|
      tag_collection.each do |tag|
        tag.name.downcase!
      end
    end
  end


  
end
