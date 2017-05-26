  class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.string :description
      t.text :instructions
      t.string :tags

      t.timestamps
    end
  end
end
