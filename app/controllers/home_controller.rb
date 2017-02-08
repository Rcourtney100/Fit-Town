class HomeController < ApplicationController
  def index
  
  end

  def newsfeed
  		@activities = Activity.all
  end

  def about
  end
end
