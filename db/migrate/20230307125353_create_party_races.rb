class CreatePartyRaces < ActiveRecord::Migration[7.0]
  def change
    create_table :party_races do |t|
      t.references :party, null: false, foreign_key: true
      t.references :race, null: false, foreign_key: true
      t.timestamps
    end
  end
end
