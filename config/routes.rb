Rails.application.routes.draw do
  resources :comments
  resources :statistics
  resources :rsvps
  resources :httparty_tests
  resources :category_events
  resources :calendars
  resources :categories
  devise_for :users, controllers: {registrations: "registrations" }
  resources :events do
    member do
      put 'like' => 'events#heart'
    end
  end

  resources :events do
    end
  get 'welcome/calendar'
  get 'events', to: 'events#index'
	# Set the default page for the web app.
  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
