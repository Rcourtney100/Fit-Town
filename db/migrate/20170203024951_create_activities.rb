class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
    t.integer :user_id
    t.integer :event_created_id
  	t.integer :comment_created_id

      t.timestamps
    end
  end
end
