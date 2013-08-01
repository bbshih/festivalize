# == Schema Information
#
# Table name: festivals
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  date       :date
#  created_at :datetime
#  updated_at :datetime
#

class Festival < ActiveRecord::Base
  validates :name, :startdate, :enddate, presence: true
end
