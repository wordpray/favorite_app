Rails.application.routes.draw do
  devise_for :users
  root 'favorites#home'
  get '/about', to:'favorites#about'
  get '/contact', to:'favorites#contact'

  resources :lists do
    get 'search', on: :collection
  end
  
  resources :users, only: [:index, :show]
  resources :categories, except: [:index, :show]
  resources :links, except: [:index, :show]
end
