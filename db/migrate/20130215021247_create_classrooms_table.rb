class CreateClassroomsTable < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :name
      t.string :password
      t.timestamps
    end
  end
end
