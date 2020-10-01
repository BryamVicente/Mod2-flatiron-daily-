class InterestsController < ApplicationController
  
  private 

  def interest_params
    params.require(:interest).permit(:topic)
  end 
end
