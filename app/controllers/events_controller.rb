class EventsController < ApplicationController
  def show
  	@event = Event.find(params[:id])
  	@comment = Comment.new
  	@comments = @event.comments
  end

  def create
  	event = Event.create(event_params)
  	activity = Activity.create(event_created: event.id, user_id: event.user.id)
  	redirect_to event
  end
  def new
  	@event = Event.new
  	
  end

  def my_events
    @events = current_user.events
    
  end
  

  private
  def event_params
  	params.require(:event).permit(:location, :time, :description, :name, :user_id)
end
end
