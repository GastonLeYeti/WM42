class RemoveUniverseTypeFromParty < ActiveRecord::Migration[7.0]
  def change
    remove_column :parties, :universe_type, :string
  end
end
