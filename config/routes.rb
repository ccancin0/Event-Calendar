Rails.application.routes.draw do
  resources :events
  #get '/show', to: 'calendar#index' as: 'index'
	# Set the default page for the web app.
  root to: 'welcome#index'
  #root to: 'welcome#calendar'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
