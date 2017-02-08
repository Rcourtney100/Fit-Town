class CommentsController < ApplicationController
  def create
  	comment = Comment.create(comment_params)
  	activity = Activity.create(comment_created: comment.id, user_id: comment.user.id) 
  	redirect_to comment.event
  end

private

def comment_params
		params.require(:comment).permit(:content, :user_id, :event_id)

end
end


