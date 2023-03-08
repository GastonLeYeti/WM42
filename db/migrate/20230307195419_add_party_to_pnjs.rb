class AddPartyToPnjs < ActiveRecord::Migration[7.0]
  def change
    add_reference :pnjs, :party, foreign_key: true
  end
end
