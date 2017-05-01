Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
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
  get 'welcome/calendar'
	# Set the default page for the web app.
  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
