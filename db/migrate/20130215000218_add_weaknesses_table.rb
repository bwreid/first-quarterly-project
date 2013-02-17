class AddWeaknessesTable < ActiveRecord::Migration
  def change
    create_table :weaknesses do |t|
      t.string :name
      t.string :description
      t.string :photo
      t.timestamps
    end
  end
end
