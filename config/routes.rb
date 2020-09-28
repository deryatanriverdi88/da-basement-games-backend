Rails.application.routes.draw do
  resources :magic_the_gatherig_cards
  get '/last_ten', to: 'magic_the_gatherig_cards#last_ten', as: 'last_ten'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
