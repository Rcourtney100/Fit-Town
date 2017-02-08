class UsersController < ApplicationController
  def index
  end

  def create
  end

  def show
  	@user = User.find(params[:id])
  	@activities = @user.activities
  end
  def follow
  	Follower.create(follower: current_user.id, following: params[:user_id])
  end

  def already_following
  
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :avatar)

end
end
