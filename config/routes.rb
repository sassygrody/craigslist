Rails.application.routes.draw do

  root 'categories#index'

  post "/categories/:category_id/posts/:id/edit" => "posts#edit"

  resources :categories do
    resources :posts
  end




end
