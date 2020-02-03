Rails.application.routes.draw do

  root 'static_pages#home'
  # rootを指定することで相対パスで指定が可能になるっぽい
  
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get '/signup', to:'users#new'
  
end
