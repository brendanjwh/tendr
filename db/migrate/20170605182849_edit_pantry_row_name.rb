class EditPantryRowName < ActiveRecord::Migration[5.0]
  def change
    rename_column :pantries, :ingredient_id, :tag_id
  end
end
