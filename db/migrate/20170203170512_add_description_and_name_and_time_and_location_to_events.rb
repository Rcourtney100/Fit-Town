class AddDescriptionAndNameAndTimeAndLocationToEvents < ActiveRecord::Migration[5.0]
  def change
  	change_table :events do |t|
  		t.string :name
  		t.string :location
  		t.string :description
  		t.datetime :time
  end
end
end