Rails.application.routes.draw do
  resources :posts
  get "/articles", to: "articles#index" #A rota declara que GET /articles as solicitações são mapeadas para a index ação de ArticlesController.

  # Para criar ArticlesController e sua indexação, executaremos o gerador do controlador (com a --skip-routesopção porque já temos uma rota apropriada)
  # bin/rails generate controller Articles index --skip-routes

end
