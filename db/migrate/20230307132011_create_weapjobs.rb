class CreateWeapjobs < ActiveRecord::Migration[7.0]
  def change
    create_table :weapjobs do |t|
      t.references :weapon, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
