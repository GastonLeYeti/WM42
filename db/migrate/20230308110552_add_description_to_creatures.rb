class AddDescriptionToCreatures < ActiveRecord::Migration[7.0]
  def change
    add_column :creatures, :description, :text
  end
end
