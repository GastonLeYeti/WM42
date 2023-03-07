class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.references :map, null: false, foreign_key: true
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
