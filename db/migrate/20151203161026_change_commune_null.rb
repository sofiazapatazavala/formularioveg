class ChangeCommuneNull < ActiveRecord::Migration
  def change
      change_column_null(:forms, :comuna, false)
  end
end