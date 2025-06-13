class ArticlesController < ApplicationController
    include ArticlesFilter

  #
  def index
     
  end

  # @articles = creo una variable de instacia para poder referenciarla (llamarla) en las vistas
  # Article.all = obtiene todos los articulos de la base de datos

  def show
    @article = Article.find(params[:id])
  end

  #params[:id] indico que me muestre cada articulo en especifico, el articulo devuelto por article.find se almacena en la variable de instancia
  
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  # el new y el create me sirven para crear un nuevo articulo

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  #El edit action obtiene el artículo de la base de datos y lo almacena en @article para que pueda ser utilizado al construir el formulario. 
  #
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :status)
    end
end

