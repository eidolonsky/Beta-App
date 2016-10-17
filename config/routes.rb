Rails.application.routes.draw do
  root'teams#new'
  resources :rosters
  resources :teams
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
