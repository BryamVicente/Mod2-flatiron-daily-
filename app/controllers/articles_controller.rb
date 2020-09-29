class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @interests = Interest.all
    @user_interests = UserInterest.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
  end
end
