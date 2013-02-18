class AddMembersTable < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first
      t.string :last
      t.string :username
      t.string :password
      t.integer :classroom_id
      t.text :photo
      t.text :description
      t.timestamps
    end
  end
end
