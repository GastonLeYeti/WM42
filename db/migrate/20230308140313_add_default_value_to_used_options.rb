class AddDefaultValueToUsedOptions < ActiveRecord::Migration[7.0]
  def change
    change_column_default :options, :used, from: nil, to: false, default: false
  end
end
