class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(articles_params)

    if @article.save
      flash[:notice] = "Article was created successfully !"
      redirect_to @article
    else
      render :new
    end
  end

  private

  def articles_params
    params.require(:article).permit(:title, :description)
  end
end
