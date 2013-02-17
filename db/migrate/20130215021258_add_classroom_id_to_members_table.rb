class AddClassroomIdToMembersTable < ActiveRecord::Migration
  def change
    add_column :members, :classroom_id, :integer
  end
end
