class RemoveRaceColumnsFromParty < ActiveRecord::Migration[7.0]
  def change
    remove_column :parties, :race_1_name, :string
    remove_column :parties, :race_2_name, :string
    remove_column :parties, :race_3_name, :string
  end
end
