Rails.application.routes.draw do
	#index route
  get 'index', to: 'home#index'
	#route for ajax call
  post '/get_weather' => 'home#get_weather'
  #root path
  root to: 'home#index'
end
