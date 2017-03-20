class EventsController < ApplicationController
  before_action :authenticate_user!
  # require 'json'
  # require 'pp'
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    # @events = HTTParty.get('https://api.meetup.com/find/events/?allMeetups=false&keywords=University+of+Memphis&radius=50&userFreeform=Memphis%2C+TN&mcId=z37501&mcName=Memphis%2C+TN&eventFilter=my',
    # :headers =>{'Content-Type' => 'application/json'})
    #@categories = Category.all
    @events = Event.where(start: params[:start]..params[:end])
  end

  # GET /events/1
  # GET /events/1.json
  def show
    #@category = CategoryEvent.where("event_id = ?", @event.id)
  end

  # GET /events/new
  def new
    @event = Event.new
    # @events = Event.all
    # @categories = Category.all
  end

  # GET /events/1/edit
  def edit
    # @events = Event.all
    # @categories = Category.all
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.save

    # respond_to do |format|
    #   if @event.save
    #     flash[:alert] = "You must be an admin to edit this project."
    #     CategoryEvent.create(event_id: @event.id, category_id: event_params["category_id"])
    #     format.html { redirect_to @event, notice: 'Event was successfully created.' }
    #     format.json { render :show, status: :created, location: @event }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @event.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @event.update(event_params)
    # respond_to do |format|
    #   if @event.update(event_params)
    #     CategoryEvent.create(event_id: @event.id, category_id: event_params["category_id"])
    #     format.html { redirect_to @event, notice: 'Event was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @event }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @event.errors, status: :unprocessable_entity }
    #   end
    # end
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
      params.require(:event).permit(:title, :description, :date_range, :start, :end, :color)
    end
end
