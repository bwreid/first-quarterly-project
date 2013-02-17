class AddMembersStrengthsJoinTable < ActiveRecord::Migration
  def change
    create_table :members_strengths, :id => false do |j|
      j.integer :member_id
      j.integer :strength_id
    end
  end
end
