# == Schema Information
#
# Table name: weaknesses
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  photo       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Weakness < ActiveRecord::Base
  attr_accessible :name, :description, :photo
  has_and_belongs_to_many :members
end
