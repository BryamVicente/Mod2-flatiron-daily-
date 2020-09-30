class InterestsController < ApplicationController
  def index
    @current_user.interested_topics
  end

  def show
    @interest = Interest.find(params[:id])
  end

  def new
    @interest = Interest.new
  end

  def create
  end

  def edit 
    @interest = Interest.find(params[:id])
  end 

  def update 
    @interest = Interest.find(params[:id])
    @interest.update(interest_params)
    
    redirect_to interest_path(@interest)
  end 

  def destroy 
    @interest = Interest.find(params[:id])
    @interest.destroy

    redirect_to interests_path
    
  end 

  private 

  def interest_params
    params.require(:interest).permit(:topic)
  end 
end
