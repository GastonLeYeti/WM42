class ChangeColumnPartySize < ActiveRecord::Migration[7.0]
  def up
    change_column :parties, :party_size, :string
  end

  def down
    change_column :parties, :party_size, :integer
  end
end
