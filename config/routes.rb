Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index', as: 'restaurants'
  get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
  patch 'restaurants/id', to: 'restaurant#update'
  delete 'restaurants/:id', to: 'restaurant#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants
end
