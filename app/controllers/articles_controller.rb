class ArticlesController < ApplicationController
  def index
    @articles = Article.search(params[:search])
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
  end

  private
  def article_params
    params.require(:article).permit(:title, :category, :source, :author, :description, :content, :publishedAt, :url, :urlToImage, :search)
  end

end
