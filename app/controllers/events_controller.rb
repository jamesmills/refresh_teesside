class EventsController < ApplicationController
  def index
    @event = Event.first
    @atten = @event.prev.attendence
    @drinks = @event.prev.drinks  
  end
  
  def show
    @event = Event.find(params[:id])
    @atten = @event.prev.attendence
    @drinks = @event.prev.drinks
  end
  
  def facebook
    redirect_to "https://www.facebook.com/refreshteesside"
  end
  
  def google
    redirect_to "http://groups.google.com/group/refresh-teesside"
  end
  
  def linkedin
    redirect_to "http://www.linkedin.com/e/vgh/780867/"
  end
  
  def twitter
    redirect_to "https://twitter.com/#!/refreshteesside"
  end
  
  def lastfm
    redirect_to "http://www.last.fm/group/Refresh+Teesside"
  end
  
  def flickr
    redirect_to "http://www.flickr.com/groups/refreshteesside/"
  end

end
