class CreateBibles < ActiveRecord::Migration[7.0]
  def change
    create_table :bibles do |t|
      t.text :content
      t.references :party, null: false, foreign_key: true

      t.timestamps
    end
  end
end
