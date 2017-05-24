class CreatePantries < ActiveRecord::Migration[5.0]
  def change
    create_table :pantries do |t|
      t.integer :ingredient_id, null: false
      t.integer :user_id, null: false
      
      t.timestamps
    end
  end
end
