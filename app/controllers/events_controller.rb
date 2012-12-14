class EventsController < ApplicationController
  def index
    @events = Event.all.reverse
  end

  def new
    @event = Event.new
    @default_time = Event.last.nil? ? Time.now : Event.last.time + 7.days
  end

  def create
    event = Event.new(params[:event])

    if event.save
      redirect_to(@event, :notice => "Event was successfully created.") 
    else
      redirect_to(:root, :notice => "Failed to create new event.") 
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update_attributes(params[:event])
  end

  def destroy
  end
end
