class AddDefaultValueToLootableWeapons < ActiveRecord::Migration[7.0]
  def change
    change_column_default :weapons, :lootable, from: nil, to: true, default: true
  end
end
