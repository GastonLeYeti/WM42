class RemoveNotNullConstraintFromPnjArchitectureId < ActiveRecord::Migration[7.0]
  def change
    change_column_null :pnjs, :architecture_id, true
  end
end
