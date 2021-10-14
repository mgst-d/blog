class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end

  def new

  end
  def create
    @c = Article.new article_params
    if @c.valid?
      @c.save
      redirect_to @c
    else
      render action: 'new'
    end
    #render plain: params[:article].inspect
  end

  def show
    @article = Article.find params[:id]
  end

  def edit
    @article = Article.find params[:id]
  end
  def update
    @article = Article.find params[:id]
    if @article.update(article_params)
      redirect_to @article
    else
      render action: 'edit'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
  
end
