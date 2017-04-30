class EventsController < ApplicationController
  # before_action :authenticate_user!
  # require 'json'
  # require 'pp'
  require 'prawn'
  before_action :set_event, only: [:show, :edit, :update, :destroy, :heart]


  # GET /events
  # GET /events.json
  def index
    @event = Event.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = EventPdf.new(@event)
        send_data pdf.render, filename: "#{@event}.pdf", type: 'application/pdf', disposition: "inline"
      end
    end
    @events = Event.where("title LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")

    @hash = Gmaps4rails.build_markers(@events) do |event, marker|
     marker.lat event.latitude
     marker.lng event.longitude
    end
  end

  def heart
    @event = Event.find(params[:id])
    if !current_user.liked? @event
      @event.liked_by current_user
    elsif current_user.liked? @event
      @event.unliked_by current_user
    end
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
