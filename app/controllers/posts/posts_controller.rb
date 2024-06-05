class PostsController < ApplicationController
  def index
    @posts = Post.all
    # displayed in the Index view (index.html.erb)
    # temos o controlador solicitando algo ao modelo
    # (“Ei, me dê todas as postagens!”), empacotando-as em uma variável de instância @posts
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
    @post = Post.new(allowed_post_params)
    if @post.save
      flash[:success] = 'Great! Your post has been created!'
      redirect_to post_path(@post.id)
    # redirect_to @post
    else
      flash.now[:error] = 'Rats! Fix your mistekes, please'
      render :new, status: :unprocessable_entity
    end
  end

  # edit sempre antes do show
  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(allowed_post_params)
      redirect_to post_path
    else
      render :edit, status: unprocessable_entity
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy

      redirect_to post_path, status: :see_other
    end

    private

    def allowed_post_params
      params.require(:post).permit(:title, :body, :author_id)
    end

    # Se você não fizesse isso, quando tentasse acessar params[:post] nada apareceria!
    # Além disso, se houver campos adicionais enviados dentro do hash, eles serão removidos e ficarão inacessíveis (para protegê-lo).
  end
end
