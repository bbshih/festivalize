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
  accepts_nested_attributes_for :stages, allow_destroy: true, reject_if: :all_blank

  validates :name, :startdate, :enddate, presence: true

end
