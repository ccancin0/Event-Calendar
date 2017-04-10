class WelcomeController < ApplicationController

  def index
    @events = Event.where("title LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
  end

  def calendar
  end

end
