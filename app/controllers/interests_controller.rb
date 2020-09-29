class InterestsController < ApplicationController
  def index
    @interests = Interest.all
    @articles = Article.all
  end

  def show
    @interest = Interest.find(params[:id])
  end

  def new
    @interest = Interest.new
  end

  def create
  end
end
