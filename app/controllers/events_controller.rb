class EventsController < ApplicationController
  def index
    @event = Event.first
    if @event.attendence.nil?
      @atten = "?"
    else
      @atten = @event.attendence
    end
      
    if @event.drinks.nil?
      @drinks = "?"
    else
      @drinks = @event.drinks
      
  end

end
