Rails.application.routes.draw do

  # root 'pages#index'

  resources :categories do
    resources :posts
  end




end
