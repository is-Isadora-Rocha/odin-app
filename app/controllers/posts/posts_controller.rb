class PostsController < ApplicationController
  def index
    @posts = Post.all
    # displayed in the Index view (index.html.erb)
    # temos o controlador solicitando algo ao modelo (“Ei, me dê todas as postagens!”), empacotando-as em uma variável de instância @posts
  end

  def new
    # Faça (mas não salve) um Post vazio para que o formulário que renderizamos saiba
    # quais campos usar e onde enviar o formulário
    # Essa ação vai renderizar app/views/posts/new.html.erb assim que terminar
    @post = Post.new
  end

  # Sabemos que isso será executado assim que recebermos o envio
  # formulário da nossa NOVA ação acima
  def create
    # config um novo @post com as informações do formulário
    if @post.save
      # configurar mensagem de parabéns

      # redirect_to post_path(@post.id) #mostra a página do post
      redirect_to @post
    # Observe que um atalho que você verá muitas vezes é, em vez de escrever redirect_to post_path(@post.id),
    # apenas escreva redirect_to @postporque o Rails sabe que as pessoas faziam isso com tanta frequência que lhe deram
    # a opção de escrevê-lo abreviadamente.

    else
      # configurar mensagem de erro
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def edit
    # code to find the post we want and send the
    # user to the Edit view for it (edit.html.erb), which has a
    # form for editing the post
  end

  def update
    # code to figure out which post we're trying to update, then
    # actually update the attributes of that post. Once that's
    # done, redirect us to somewhere like the Show page for that
    # post
  end

  def destroy
    # code to find the post we're referring to and
    # destroy it.  Once that's done, redirect us to somewhere fun.
  end
end
