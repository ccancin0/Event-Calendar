class WelcomeController < ApplicationController

  def index
    @events = Event.all
    if params[:search] != nil && params[:search].size > 0
      @events = Event.none
      words = params[:search].split(' ')
      words.each do |word|
        @events += Event.where("title LIKE ? OR description LIKE ?", "%#{word}%", "%#{word}%")
      end
    end
    # @events = Event.where("title LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
  end


  def calendar
  end

end
