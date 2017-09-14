Rails.application.routes.draw do
  devise_for :users
  root 'favorites#home'
  get '/about', to:'favorites#about'
  get '/contact', to:'favorites#contact'

  resources :favorites, only: [:show, :new, :create, :destroy, :edit] do
    get 'search', on: :collection
    get 'recommend', on: :collection
  end
end
