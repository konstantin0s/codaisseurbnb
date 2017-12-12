class EventsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update]
 before_action :authenticate_user!, except: [:show]

 def index
   @rooms = current_user.rooms
 end

 def show; end

 def new
   @room = current_user.rooms.build
 end

 def create
   @event = current_user.events.build(event_params)

   if @event.save
     redirect_to @event, notice: "Event created"
   else
     render :new
   end
 end

 def edit; end

 def update
   if @event.update(event)
     redirect_to @event, notice: "Event updated"
   else
     render :edit
   end
 end

 private

 def set_event
   @event = Event.find(params[:id])
 end

 def event_params
   params
     .require(:event)
     .permit(
       :name, :description, :location, :price, :capacity, :includes_food, :includes_drinks, :starts_at, :ends_at, :active
     )
 end
end
