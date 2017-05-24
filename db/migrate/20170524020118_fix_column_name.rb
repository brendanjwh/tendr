class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    change_table :ingredients do |t|
      t.rename :title, :name
    end
  end
end
