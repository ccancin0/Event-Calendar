class EventsController < ApplicationController
  before_action :authenticate_user!
  # require 'json'
  # require 'pp'

  before_action :set_event, only: [:show, :edit, :update, :destroy, :heart]

  # GET /events
  # GET /events.json
  def index
    # @events = HTTParty.get('https://api.meetup.com/find/events/?allMeetups=false&keywords=University+of+Memphis&radius=50&userFreeform=Memphis%2C+TN&mcId=z37501&mcName=Memphis%2C+TN&eventFilter=my',
    # :headers =>{'Content-Type' => 'application/json'})
    #@categories = Category.all
    #@events = Event.where(start: params[:start]..params[:end])
    #@events = Event.where("title LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")

    @hash = Gmaps4rails.build_markers(@events) do |event, marker|
     marker.lat event.latitude
     marker.lng event.longitude
    end
  end

  def heart
    @event = Event.find(params[:id])
    if !current_user.liked? @event
      @event.liked_by current_user
      #redirect_to root_path
    elsif current_user.liked? @event
      @event.unliked_by current_user
      #redirect_to root_path
    end
  end

  def rsvp
    @event = Event.find(params[:id])
    @event.upvote_from current_user #working on this
    redirect_to root_path
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.save
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @event.update(event_params)
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :description, :date_range, :start, :end, :address, :latitude, :longitude, :color)
    end
end
