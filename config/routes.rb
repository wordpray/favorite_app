Rails.application.routes.draw do
  devise_for :users
  root 'favorites#home'
  get '/about', to:'favorites#about'
  get '/contact', to:'favorites#contact'

  resources :lists, only: [:new, :show, :create, :destroy, :edit] do
    get 'search', on: :collection
    get 'recommend', on: :collection
  end
  
  resources :users, only: [:index, :show]
end
