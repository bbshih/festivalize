class ChangeFestivalDateToDateTime < ActiveRecord::Migration
  def change
    change_column :festivals, :date, :datetime
  end
end
