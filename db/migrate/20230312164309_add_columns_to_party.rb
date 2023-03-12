class AddColumnsToParty < ActiveRecord::Migration[7.0]
  def change
    add_column :parties, :player_1, :string
    add_column :parties, :player_2, :string
    add_column :parties, :player_3, :string
    add_column :parties, :player_4, :string
    add_column :parties, :player_5, :string
    add_column :parties, :player_6, :string
    add_column :parties, :player_7, :string
    add_column :parties, :player_8, :string
    add_column :parties, :player_9, :string
    add_column :parties, :player_10, :string

    add_column :parties, :party_size, :integer

    add_column :parties, :race_1_name, :string
    add_column :parties, :race_2_name, :string
    add_column :parties, :race_3_name, :string

    add_column :parties, :universe_type, :string

    add_column :parties, :geography_1, :string
    add_column :parties, :geography_2, :string

    add_column :parties, :city_1_name, :string
    add_column :parties, :city_1_size, :integer
    add_column :parties, :city_1_building_1, :string
    add_column :parties, :city_1_building_2, :string

    add_column :parties, :city_2_name, :string
    add_column :parties, :city_2_size, :integer
    add_column :parties, :city_2_building_1, :string
    add_column :parties, :city_2_building_2, :string

    add_column :parties, :mythical_creature_1_name, :string
    add_column :parties, :mythical_creature_2_name, :string
  end
end
