class CreateFuns < ActiveRecord::Migration[7.0]
  def change
    create_table :funs do |t|
      t.references :party, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
