Rails.application.routes.draw do

  resources :products
  get 'store/new'

 get 'home/index'
  
end
