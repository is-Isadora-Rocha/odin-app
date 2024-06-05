Rails.application.routes.draw do
  resources :posts

  root 'articles#index'
  get '/articles', to: 'articles#index'
end
