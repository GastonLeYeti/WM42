class EditBibleTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :bibles, :party_id, :integer
    add_reference :bibles, :party, foreign_key: true
  end
end
