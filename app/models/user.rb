class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments
  has_many :recipes
  has_many :favorited_drinks, through: :favorites, source: :recipes
  # has_many :recipes, through: :pantry, foreign_key: 'recipe_id'
end
