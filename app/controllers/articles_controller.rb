class ArticlesController < ApplicationController
  def new

  end
  def create
    @c = Article.new article_params
    if @c.valid?
      @c.save
    else
      render action: 'new'
    end
    #render plain: params[:article].inspect
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
