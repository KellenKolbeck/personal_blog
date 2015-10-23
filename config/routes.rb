Rails.application.routes.draw do
  root 'posts#index'
  resources :posts

  resources :posts do
    resources :tags
  end

  resources :tags
end
