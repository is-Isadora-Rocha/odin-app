##  URL Raiz 

`root to: "kittens index"`  kittens é o controller, index ação do método

`index` é o método dentro do controlador, apenas o método index definido no  `KittensController`

`def index end`

### Na página html

`link_to "Edit this post", edit_post_path(3) [gerar o caminho /posts/3/edit]`


    ################################################
    ##                                            ##
    ## AS ROTAS VÃO PARA AS AÇÕES DO CONTROLADOR! ##
    ##                                            ##
    ################################################
    

### Não queremos todas as setes rotas! 

  APENAS 
   resources :posts, only: [:index, :show]

  EXCETO
   resources :users, except: [:index] 

  ```
  get "/posts", to: "posts#index"
  get "/posts/new", to: "posts#new"
  get "/posts/:id", to: "posts#show"
  post "/posts", to: "posts#create"  # usually a submitted form
  get "/posts/:id/edit", to: "posts#edit"
  put "/posts/:id", to: "posts#update" # usually a submitted form
  delete "/posts/:id", to: "posts#destroy"

  ```

  O campo “id” é precedido por dois pontos… que apenas diz ao Rails “Procure qualquer coisa aqui e salve-a como o ID no hash de params”. 
  Ele permite que você envie uma solicitação GET para a primeira postagem e a quinta postagem para a mesma rota, apenas com um ID diferente:
  ```
  /posts/1  # going to the #show action of the PostsController
  /posts/5  # also going to the #show action of PostsController
  ```