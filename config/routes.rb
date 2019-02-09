Rails.application.routes.draw do

  # get 'reviews/index'
  # get 'reviews/new'
  # get 'reviews/create'
  # get 'reviews/show'
  # get 'reviews/edit'
  # get 'reviews/update'
  # get 'reviews/destroy'
  root to: 'restaurants#index'

  # get 'restaurants', to: 'restaurants#index', as: 'restaurants'
  # get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
  # patch 'restaurants/:id', to: 'restaurant#update', as: 'update_restaurant'
  # delete 'restaurants/:id', to: 'restaurant#destroy', as: 'destroy_restaurant'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:index, :new, :cesreate]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]

  post '/restaurants/:id/reviews', to: 'reviews#create'
end
