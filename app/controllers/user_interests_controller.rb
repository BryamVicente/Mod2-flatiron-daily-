class UserInterestsController < ApplicationController
  def index
    
  end

  def show
    @userinterest = UserInterest.find(params[:id])
  end

  def new
    @userinterest = UserInterest.new
  end

  def create
  end
end
