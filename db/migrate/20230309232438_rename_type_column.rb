class RenameTypeColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :armories, :type, :kind
  end
end
