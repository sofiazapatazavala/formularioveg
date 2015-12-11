class ChangeColumnNull < ActiveRecord::Migration
  def change
      change_column_null(:forms, :nombre, false)
      change_column_null(:forms, :email, false)
  end
end