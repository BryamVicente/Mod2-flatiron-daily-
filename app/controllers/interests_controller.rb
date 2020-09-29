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
end
