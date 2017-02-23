Rails.application.routes.draw do
	
  resources :calendars
  resources :categories
  resources :events
	# Set the default page for the web app.
  	root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
