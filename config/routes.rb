Rails.application.routes.draw do
  devise_for :users
  root 'favorites#home'
  get '/about', to:'favorites#about'
  get '/contact', to:'favorites#contact'

  resources :genres, only: :show
  resources :categories, except: [:index]
  resources :lists do
    get 'search', on: :collection
    resources :links, except: [:index, :show]
  end
  resources :users, only: [:show]
end
