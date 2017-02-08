class Addfollowingtofollowers < ActiveRecord::Migration[5.0]
  def change
  	add_column :followers, :following, :integer
  	add_column :followers, :follower, :integer
  end
end
