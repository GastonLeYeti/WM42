class AddGeoArray < ActiveRecord::Migration[7.0]
  def change
    remove_column :parties, :geography_1, :string
    remove_column :parties, :geography_2, :string
    add_column :parties, :geography, :text, array: true, default: []
  end
end
