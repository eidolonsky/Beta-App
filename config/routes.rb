Rails.application.routes.draw do
  root'teams#new'
  resources :rosters
  resources :teams
  resources :players
  post 'players/pick'
  get 'auth/:provider/callback', to: 'sessions#create'
  get '/auth/google_oauth2', to: 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
