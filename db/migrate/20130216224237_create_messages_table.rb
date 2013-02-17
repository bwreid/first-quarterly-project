class CreateMessagesTable < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :message
      t.integer :from
      t.integer :member_id
      t.timestamps
    end
  end
end
