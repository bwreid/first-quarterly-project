class AddMembersWeaknessesJoinTable < ActiveRecord::Migration
  def change
    create_table :members_weaknesses, :id => false do |j|
      j.integer :member_id
      j.integer :weakness_id
    end
  end
end
