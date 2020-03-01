Rails.application.routes.draw do

  
  

  root 'static_pages#home'

  # rootを指定することで相対パスで指定が可能になるっぽい

  
  
  get 'sessions/new'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get '/experiment', to: 'static_pages#experiment'
  get '/signup', to:'users#new'
  post '/signup', to:'users#create'
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'

  
  patch '/point', to:'users#point'
  patch '/rank', to:'users#rank'


  resources :users do 
    resources :pictures, only: [:index, :new, :create, :destroy]
    resources :todos, only: [:index, :new, :create, :destroy]
    resources :games, only: [:index, :new, :create, :destroy, :show]
  end

      
end
