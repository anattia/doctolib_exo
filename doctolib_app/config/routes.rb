Rails.application.routes.draw do


  devise_for :administrators
  mount Ckeditor::Engine => '/ckeditor'
  

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  namespace :public, path: "/" do
    
    #routes des pages
  
    root 'pages#home'
    resources :users
  end
  
  namespace :admin do

    get 'users/:id/block_user' => 'users#block_it', as: :user_block_user
    get 'users/:id/deblock_user' => 'users#unblock_it', as: :user_deblock_user

    resources :administrators
    resources :users
    
    root 'pages#home'

  end


end
