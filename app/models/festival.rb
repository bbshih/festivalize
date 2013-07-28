class Festival < ActiveRecord::Base
  validates :name, :date, presence: true
end
