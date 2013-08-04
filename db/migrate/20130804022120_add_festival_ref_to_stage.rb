class AddFestivalRefToStage < ActiveRecord::Migration
  def change
    add_reference :stages, :festivals, index:true
  end
end
