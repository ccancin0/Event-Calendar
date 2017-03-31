class WelcomeController < ApplicationController

  def index

  	# if
  	# 	user_signed_in?
  	# 	redirect_to_welcomes_path
  	# else
  	# 	redirect_to new_user_session_path
  	# end

  	@events = Event.where("title LIKE ?", "%#{params[:search]}%")
  end

  def calendar
  end

end
