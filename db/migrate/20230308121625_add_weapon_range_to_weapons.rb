class AddWeaponRangeToWeapons < ActiveRecord::Migration[7.0]
  def change
    add_column :weapons, :weapon_range, :string
  end
end
