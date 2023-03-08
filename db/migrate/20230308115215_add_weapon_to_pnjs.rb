class AddWeaponToPnjs < ActiveRecord::Migration[7.0]
  def change
    add_reference :weapons, :pnj, foreign_key: true
  end
end
