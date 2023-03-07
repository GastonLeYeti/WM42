class CreateMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :maps do |t|
      t.references :party, null: false, foreign_key: true
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
