class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.boolean :weaponized
      t.references :universe, null: false, foreign_key: true
      t.string :weapon_range

      t.timestamps
    end
  end
end
