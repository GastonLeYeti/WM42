class AddBibleToParties < ActiveRecord::Migration[7.0]
  def change
    add_column :parties, :bible, :text
    add_column :pnjs, :description, :text
    add_column :weapons, :description, :text
  end
end
