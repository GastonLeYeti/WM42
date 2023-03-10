class AddCascadeDeleteToMaps < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :maps, :parties
    add_foreign_key :maps, :parties, on_delete: :cascade
  end
end
