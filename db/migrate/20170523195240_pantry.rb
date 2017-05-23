class Pantry < ActiveRecord::Migration[5.0]
  def change
    create_table :pantry, :id => false do |t|
      t.integer :recipe_id, null: false
      t.integer :user_id, null: false
  end
end
