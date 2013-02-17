class AddRecommenderIdColumnToRecommendationsTable < ActiveRecord::Migration
  def change
    rename_column :recommendations, :from, :recommender
  end
end
