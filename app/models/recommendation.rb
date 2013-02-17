# == Schema Information
#
# Table name: recommendations
#
#  id          :integer          not null, primary key
#  message     :string(255)
#  member_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  recommender :integer
#

class Recommendation < ActiveRecord::Base
  attr_accessible :message, :recommender, :member_id
  belongs_to :member
end
