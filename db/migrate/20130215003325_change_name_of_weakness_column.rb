class ChangeNameOfWeaknessColumn < ActiveRecord::Migration
  def change
    rename_column :members_weaknesses, :weaknesses_id, :weakness_id
  end
end
