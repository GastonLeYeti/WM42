class CreatePnjs < ActiveRecord::Migration[7.0]
  def change
    create_table :pnjs do |t|
      t.string :name
      t.integer :lvl
      t.references :job, null: false, foreign_key: true
      t.string :status
      t.references :race, null: false, foreign_key: true
      t.references :architecture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
