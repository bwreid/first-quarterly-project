class CreateRecommendationsTable < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :message
      t.string :from
      t.integer :member_id
      t.timestamps
    end
  end
end
