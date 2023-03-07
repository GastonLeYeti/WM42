class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :username
      t.integer :party_id
      t.timestamps
    end
  end
end
