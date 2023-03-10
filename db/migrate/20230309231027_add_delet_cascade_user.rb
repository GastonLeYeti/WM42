class AddDeletCascadeUser < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :parties, :users
    add_foreign_key :parties, :users, on_delete: :cascade
  end
end
