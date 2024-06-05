Rails.application.routes.draw do
  resources :posts
  get "/articles", to: "articles#index"
end
