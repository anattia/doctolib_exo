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


    resources :administrators
    resources :users
    
    root 'pages#home'

  end


end
