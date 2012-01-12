class EventsController < ApplicationController
  def index
    @event = Event.first
    @atten = @event.attendence
    @drinks = @event.drinks
    
  end

end
