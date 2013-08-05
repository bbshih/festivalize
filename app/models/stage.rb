# == Schema Information
#
# Table name: stages
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  festivals_id :integer
#

class Stage < ActiveRecord::Base
  belongs_to :festival
end
