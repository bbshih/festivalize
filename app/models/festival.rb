# == Schema Information
#
# Table name: festivals
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  startdate  :datetime
#  created_at :datetime
#  updated_at :datetime
#  enddate    :datetime
#

class Festival < ActiveRecord::Base
  has_many :stages
  validates :name, :startdate, :enddate, presence: true
  accepts_nested_attributes_for :stages
end
