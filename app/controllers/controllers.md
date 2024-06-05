[Controladores](https://www.theodinproject.com/lessons/ruby-on-rails-controllers)

O trabalho do controlador é realmente agir como o intermediário final. Ele sabe quais perguntas deseja fazer ao modelo, mas deixa o modelo fazer todo o trabalho pesado para realmente resolver essas questões. [...]
Tudo o que ele faz é coletar o lote adequado de variáveis ​​de instância para enviar à visualização.

Depois que uma solicitação HTTP chega à sua aplicação e o roteador decide para qual controlador e ação mapeá-la, o Rails empacota todos os parâmetros que foram associados a essa solicitação e executa o método especificado no controlador especificado.

E se você quiser mostrar todas as postagens do seu blog na página de índice do seu site?

Execute a #indexação do seu controlador de Postagens e ele pegará todas as suas postagens e as enviará para o `index.html.erb`
arquivo de visualização.

# MAS ANTES

### EM ROUTES.RB

```
get "/articles", to: "articles#index"
```

A rota acima declara que `GET /articles` as solicitações são mapeadas para a index ação de ArticlesController.

<span> Para criar ArticlesController e sua indexação, executaremos o gerador do controlador (com a --skip-routes opção porque já temos uma rota apropriada) </span>

`bin/rails generate controller Articles index --skip-routes`

> > posts_controller.rb

```
class PostsController < ApplicationController

  def index
    @posts = Post.all
    # displayed in the Index view (index.html.erb)
  end
```

Nesta ação, temos o controlador solicitando algo ao modelo (“Ei, me dê todas as postagens!”), empacotando-as em uma variável de instância `@posts` para que a visualização possa usá-las e, em seguida, renderizará automaticamente a visualização em app/views/posts/index.html.erb

# PARÂMETROS E PARÂMETROS FORTES

Para permitir parâmetros explicitamente, você usa os métodos `require` e `permit`.
Basicamente, você `require` coloca o nome do seu array ou hash em Params (caso contrário, gerará um erro) e, em seguida, permite atributos individuais dentro desse hash a serem usados. Por exemplo:

```
  def allowed_post_params
    params.require(:post).permit(:title,:body,:author_id)
  end
```

Isso retornará o hash apenas dos parâmetros que você permite explicitamente (por exemplo, `{:title => "your title", :body => "your body", :author_id => "1"}`).
Se você não fizesse isso, quando tentasse acessar params[:post] nada apareceria!
Além disso, se houver campos adicionais enviados dentro do hash, eles serão removidos e ficarão inacessíveis (para protegê-lo).
