class UserInterestsController < ApplicationController
  before_action :find_user_interest, only: [:update, :edit, :destroy]

  def index
    @user_interests = @current_user.user_interests 
    @interests = Interest.all
    @articles = Article.all
  end


  def new
    @user_interests = UserInterest.new
  end

  def create
    params[:user_interest].each do |ui|
      @current_user.user_interests.create(interest_id: ui[:interest_id])
    end
      redirect_to user_path(@current_user)
  end

  def edit 
  end 

  def update 
    @user_interest.update(interest_params)
    redirect_to user_path(@user)
  end 

  def destroy 
    @user_interest.destroy
    redirect_to user_path(@user)
  end 

  private 
  def find_user_interest
    @user_interest = UserInterest.find(params[:id])
  end

  def user_interest_params
    params.require(:user_interest).permit(:user_id, :interest_id)
  end
  
end
