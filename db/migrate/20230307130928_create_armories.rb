class CreateArmories < ActiveRecord::Migration[7.0]
  def change
    create_table :armories do |t|
      t.string :type
      t.string :weapon_range
      t.references :universe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
