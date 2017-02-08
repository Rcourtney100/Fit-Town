class AddContentToComments < ActiveRecord::Migration[5.0]
  def change
  	change_table :comments do |t|
  		t.string :content
  end
end
end
