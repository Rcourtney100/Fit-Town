class ChangeColumnNamesInActivities < ActiveRecord::Migration[5.0]
  def change
  	rename_column :activities, :event_created_id, :event_created
    rename_column :activities, :comment_created_id, :comment_created
  end
end
