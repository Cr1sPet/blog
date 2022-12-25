# frozen_string_literal: true

module Web
  class ArticlesController < Web::ApplicationController
    before_action :authenticate_user!, except: %i[index show]

    def index
      puts 'SLOBDA'
      if user_session
        puts 'SLOBDA1'
        user_session[:search_name] = params[:search_name]
      end

      puts params

      if user_session && user_session[:search_name]
        @articles = Article.joins(:author)
                           .where('name LIKE ?', "%#{user_session[:search_name].titleize}%")
                           .order(:created_at)
                           .page params[:page]
        @search_name = user_session[:search_name]
        puts 'SLOBDA2'
      else
        @articles = Article.order(:created_at).page params[:page]
        puts 'SLOBDA3'
      end
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
        flash[:notice] = 'Article successfully created'
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
        flash[:notice] = 'Article successfully updated'
        redirect_to @article
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @article = Article.find(params[:id])
      authorize @article
      return unless @article.destroy

      flash[:notice] = 'Article successfully deleted'
      redirect_to articles_path
    end

    private

    def article_params
      params.require(:article).permit(:title, :body)
    end
  end
end
