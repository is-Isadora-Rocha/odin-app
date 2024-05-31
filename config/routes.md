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