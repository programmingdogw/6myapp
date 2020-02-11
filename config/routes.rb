Rails.application.routes.draw do

  get 'sessions/new'

  root 'static_pages#home'
  # rootを指定することで相対パスで指定が可能になるっぽい
  
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get '/実験', to: 'static_pages#実験'
  get '/signup', to:'users#new'
  post '/signup', to:'users#create'
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'
  resources :users
  
end
