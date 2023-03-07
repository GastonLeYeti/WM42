class CreateBibles < ActiveRecord::Migration[7.0]
  def change
    create_table :bibles do |t|
      t.text :content
      t.integer :party_id

      t.timestamps
    end
  end
end
