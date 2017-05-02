class CategoryController < ApplicationController
  def index
  	@events = Event.all
    if params[:search] != nil && params[:search].size > 0
      @events = Event.none
      words = params[:search].split(' ')
      words.each do |word|
        @events += Event.where("title LIKE ? OR description LIKE ?", "%#{word}%", "%#{word}%")
      end
  	end
  end

  def sports
    @events = Event.all
    if params[:search] != nil && params[:search].size > 0
      @events = Event.none
      words = params[:search].split(' ')
      words.each do |word|
        @events += Event.where("title LIKE ? OR description LIKE ?", "%#{word}%", "%#{word}%")
      end
    end
  end

  def technology
    @events = Event.all
    if params[:search] != nil && params[:search].size > 0
      @events = Event.none
      words = params[:search].split(' ')
      words.each do |word|
        @events += Event.where("title LIKE ? OR description LIKE ?", "%#{word}%", "%#{word}%")
      end
    end
  end

  def arts
    @events = Event.all
    if params[:search] != nil && params[:search].size > 0
      @events = Event.none
      words = params[:search].split(' ')
      words.each do |word|
        @events += Event.where("title LIKE ? OR description LIKE ?", "%#{word}%", "%#{word}%")
      end
    end
  end

  def theater
    @events = Event.all
    if params[:search] != nil && params[:search].size > 0
      @events = Event.none
      words = params[:search].split(' ')
      words.each do |word|
        @events += Event.where("title LIKE ? OR description LIKE ?", "%#{word}%", "%#{word}%")
      end
    end
  end

  def news
    @events = Event.all
    if params[:search] != nil && params[:search].size > 0
      @events = Event.none
      words = params[:search].split(' ')
      words.each do |word|
        @events += Event.where("title LIKE ? OR description LIKE ?", "%#{word}%", "%#{word}%")
      end
    end
  end

  def politics
    @events = Event.all
    if params[:search] != nil && params[:search].size > 0
      @events = Event.none
      words = params[:search].split(' ')
      words.each do |word|
        @events += Event.where("title LIKE ? OR description LIKE ?", "%#{word}%", "%#{word}%")
      end
    end
  end

  def health
    @events = Event.all
    if params[:search] != nil && params[:search].size > 0
      @events = Event.none
      words = params[:search].split(' ')
      words.each do |word|
        @events += Event.where("title LIKE ? OR description LIKE ?", "%#{word}%", "%#{word}%")
      end
    end
  end

  def food
    @events = Event.all
    if params[:search] != nil && params[:search].size > 0
      @events = Event.none
      words = params[:search].split(' ')
      words.each do |word|
        @events += Event.where("title LIKE ? OR description LIKE ?", "%#{word}%", "%#{word}%")
      end
    end
  end

  def show
  end
  
end
