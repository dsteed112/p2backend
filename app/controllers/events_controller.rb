class EventsController < ApplicationController
    def index
        @events = Event.all
        render json: @events, include: [:user]
    end
    
    def show
        @event = Event.find(params[:id])
        render json: @event, include: [:user]
    end
    
    
    def create
        @event = Event.create({happening: params[:happening], location: params[:location], time: params[:time], user_id: params[:user_id]})
        redirect_to "http://localhost:3001/events"
    end
end
