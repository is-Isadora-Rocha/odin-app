##  URL Raiz 

  ```
    root to: "kittens index" 
  ```
              kittens controller, index ação do método

    index =  o método dentro do controlador, apenas o método index definido no KittensController

    Atenção: 
    NÃO codifique os URLS, porque você não terá sorte quando você decidir alterar os URLs e 
    ter que acessá-los manualmente e alterá-los você mesmo. 

    Rails fornece um método auxiliar que permite criar links chamados `link_to`, 
        mas você precisará fornecer o texto que deseja mostrar e a URL para vinculá-lo.

  ```
   link_to "Edit this post", edit_post_path(3) [gerar o caminho /posts/3/edit]
  ```

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