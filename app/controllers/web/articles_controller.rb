class Web::ArticlesController < Web::ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @article.views += 1
    @article.save
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.author = current_user

    if @article.save
      flash[:notice] = "Article successfully created"
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
    authorize @article
  end

  def update
    @article = Article.find(params[:id])
    authorize @article

    if @article.update(article_params)
      flash[:notice] = "Article successfully updated"
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end

  end

  def destroy
    @article = Article.find(params[:id])
    authorize @article
    if @article.destroy
      flash[:notice] = "Article successfully deleted"
      redirect_to articles_path
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
