class UserInterestsController < ApplicationController
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
    # if user_interest.valid?
    #   redirect_to interest_path(user_interest.interest)
    # else 
    #   flash[:my_errors] = user_interest.errors.full_messages
    #   redirect_to new_user_interest_path
    # end 
  end

  private 

  def user_interest_params
    params.require(:user_interest).permit(:user_id, :interest_id)
  end
  
end
