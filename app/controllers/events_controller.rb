class EventsController < ApplicationController
  def index
    @event = Event.first
    @atten = @event.attendence unless @event.attendence.nil?
    @drinks = @event.drinks unless @event.drinks.nil?
    
  end

end
