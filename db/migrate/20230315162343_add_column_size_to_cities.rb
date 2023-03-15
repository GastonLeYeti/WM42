class AddColumnSizeToCities < ActiveRecord::Migration[7.0]
  def change
    add_column :cities, :size, :string
  end
end
