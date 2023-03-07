class CreateWeapons < ActiveRecord::Migration[7.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :level
      t.string :rarity
      t.integer :price
      t.references :armory, null: false, foreign_key: true
      t.boolean :lootable
      t.references :party, null: false, foreign_key: true

      t.timestamps
    end
  end
end
