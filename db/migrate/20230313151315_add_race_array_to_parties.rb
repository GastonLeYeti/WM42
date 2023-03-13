class AddRaceArrayToParties < ActiveRecord::Migration[7.0]
  def change
    add_column :parties, :races, :text
  end
end
