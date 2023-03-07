class CreateRaces < ActiveRecord::Migration[7.0]
  def change
    create_table :races do |t|
      t.string :name
      t.references :universe, null: false, foreign_key: true
      t.string :culture
      t.string :divinity
      t.string :category

      t.timestamps
    end
  end
end
