class AddCreaturesArray < ActiveRecord::Migration[7.0]
  def change
    remove_column :parties, :mythical_creature_1_name, :string
    remove_column :parties, :mythical_creature_2_name, :string
    add_column :parties, :creatures, :text, array: true, default: []
  end
end
