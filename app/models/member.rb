# == Schema Information
#
# Table name: members
#
#  id           :integer          not null, primary key
#  first        :string(255)
#  last         :string(255)
#  username     :string(255)
#  password     :string(255)
#  photo        :text
#  description  :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  classroom_id :integer
#

class Member < ActiveRecord::Base
  attr_accessible :first, :last, :username, :photo, :description, :strength_ids, :weakness_ids, :classroom_id, :password
  has_and_belongs_to_many :strengths
  has_and_belongs_to_many :weaknesses
  has_many :recommendations
  has_many :messages
  belongs_to :classroom

  def full_name
    "#{first} #{last}"
  end

  def strength_check
    result = strengths.map(&:name).uniq
  end

  def weakness_check
    result = weaknesses.map(&:name).uniq
  end

end