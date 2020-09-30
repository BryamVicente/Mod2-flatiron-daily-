class FavoritesController < ApplicationController
  # def index
  #   @favorites = Favorite.all
  # end

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
    @favorite = Favorite.find(params[:id])
    @favorite.update(favorite_params)
    
    # redirect_to user_path(favorite.user)
    redirect_to favorite_path
  end 

  def destroy 
    @favorite = Favorite.find(params[:id])
    @favorite.destroy

    redirect_to user_path(favorite.user)
  end 

  private 
  def favorite_params
    params.require(:favorite).permit(:user_id, :article_id)
  end
end
