class ModifyRacesColumnAsAnArray < ActiveRecord::Migration[7.0]
  def change
    remove_column :parties, :races, :text
    add_column :parties, :races, :text, array: true, default: []
  end
end
