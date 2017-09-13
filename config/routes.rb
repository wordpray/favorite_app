Rails.application.routes.draw do
  devise_for :users
  root 'favorites#home'
  get '/about', to:'favorites#about'
  get '/contact', to:'favorites#contact'

end
