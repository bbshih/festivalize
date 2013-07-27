class CreateFestivals < ActiveRecord::Migration
  def change
    create_table :festivals do |t|
      t.string :name
      t.date :date
      t.timestamps
    end
  end
end
