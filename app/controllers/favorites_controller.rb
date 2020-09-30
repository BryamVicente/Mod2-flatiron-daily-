class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def show
    @favorite = Favorite.find(params[:id])
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

  private 

  def favorite_params
    params.require(:favorite).permit(:user_id, :article_id)
  end
end
