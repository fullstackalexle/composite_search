Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  post '/composite_search', to: 'home#composite_search', as: 'composite_search'
end
