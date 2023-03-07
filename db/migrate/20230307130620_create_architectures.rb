class CreateArchitectures < ActiveRecord::Migration[7.0]
  def change
    create_table :architectures do |t|
      t.references :city, null: false, foreign_key: true
      t.references :building, null: false, foreign_key: true

      t.timestamps
    end
  end
end
