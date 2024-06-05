Rails.application.routes.draw do
  resources :posts
  resources :articles

  root 'articles#index'
end
