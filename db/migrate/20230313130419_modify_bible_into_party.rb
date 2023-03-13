class ModifyBibleIntoParty < ActiveRecord::Migration[7.0]
  def change
    change_column_default :parties, :bible, " "
  end
end
