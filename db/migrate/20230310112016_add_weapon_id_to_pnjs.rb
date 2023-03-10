class AddWeaponIdToPnjs < ActiveRecord::Migration[7.0]
  def change
    add_column :pnjs, :weapon_id, :integer
    add_foreign_key :pnjs, :weapons, on_delete: :nullify
  end
end
