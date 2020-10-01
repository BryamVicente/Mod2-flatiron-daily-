class FavoritesController < ApplicationController
  before_action :find_favorite, only: [:show, :edit, :update, :destroy]
  
  def index
    @favorites = @current_user.favorites
  end

  def show
  end

  def new
    @favorite = Favorite.new
  end

  def create
    favorite = @current_user.favorites.create(favorite_params)
    if favorite.valid?
      redirect_to user_path(favorite.user)
    else 
      flash[:my_errors] = favorite.errors.full_messages
      redirect_to new_favorite_path
    end 
  end

  def edit 
    @favorite = Favorite.find(params[:id])
  end 

  def update 
    @favorite.update(favorite_params)
    # redirect_to user_path(favorite.user)
    redirect_to favorite_path(@favorite)
  end 

  def destroy 
    @favorite.destroy
    redirect_to favorites_path
    
  end 

  private 
  def find_favorite
    @favorite = Favorite.find(params[:id])
  end

  def favorite_params
    params.require(:favorite).permit(:user_id, :article_id)
  end
end
