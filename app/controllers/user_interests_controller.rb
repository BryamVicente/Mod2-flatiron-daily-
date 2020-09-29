class UserInterestsController < ApplicationController
  def index
    @user_interests = @current_user.user_interests 
    @interests = Interest.all
  end


  def new
    @user_interests = UserInterest.new
  end

  def create
    user_interest = @current_user.user_interests.create(user_interest_params)
    redirect_to article_path
  end

  private 

  def user_interest_params
    params.require(:user_interest).permit(:user_id, :interest_id)
  end
  
end
