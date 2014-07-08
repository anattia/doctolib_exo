Rails.application.routes.draw do

namespace :public, path: "/" do
    
    #routes des pages
   get "resultat"  => "pages#resulta", as: :result
    root 'pages#home'
    resources :users
    resources :professionnels
    resources :specialites
  end
  
  namespace :admin do


    get 'products/exemples'
    get 'products/:product_id/create_from_exemple' => 'products#create_from_exemple', as: :product_from_exemple
    post 'products/destroy_list'
    
    resources :administrators
    resources :users
    resources :products
    resources :categories 
    resources :orders
    
    root 'pages#home'

  end


end
