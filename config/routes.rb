Rails.application.routes.draw do
  resources :users
  post "/login", to: "session#login"
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'
  resources :favorite_cards
  resources :magic_the_gatherig_cards
  get '/last_ten', to: 'magic_the_gatherig_cards#last_ten', as: 'last_ten'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
