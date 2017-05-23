class RecipeIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :recipeIngredients, :id => false do |t|
      t.integer :recipe_id, null: false
      t.integer :ingredient_id, null: false
    end
  end
end
