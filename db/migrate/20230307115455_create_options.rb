class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :name
      t.boolean :used

      t.timestamps
    end
  end
end
