Rails.application.routes.draw do
  devise_for :users
  root 'favorites#home'
  get '/about', to:'favorites#about'
  get '/contact', to:'favorites#contact'

  resources :categories, except: [:index] do
    resources :lists, except: [:index]
  end

  resources :lists, only: [:index] do
    get 'search', on: :collection
    resources :links, except: [:index, :show]
  end
  resources :users, only: [:show]
end
