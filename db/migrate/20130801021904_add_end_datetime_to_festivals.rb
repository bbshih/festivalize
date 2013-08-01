class AddEndDatetimeToFestivals < ActiveRecord::Migration
  def change
    add_column :festivals, :enddate, :datetime
    rename_column :festivals, :date, :startdate
  end
end
