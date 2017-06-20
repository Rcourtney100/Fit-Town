class FollowersController < ApplicationController
  def create
  	follower.create(follower_id: current_user.id, following_id: params[:id])
  end
end
