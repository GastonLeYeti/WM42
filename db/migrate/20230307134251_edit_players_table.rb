class EditPlayersTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :players, :party_id, :integer
    add_reference :players, :party, foreign_key: true
  end
end
