class ApplicationController < ActionController::Base
    before_action :authorized, :logged_in?, :set_time
    helper_method :logged_in?

    def set_time
        @time = Time.now
    end

    def set_current_user
        @current_user = User.find_by(id: session[:user])
    end

    def logged_in?
        !!set_current_user
    end

    def authorized
        redirect_to new_user_path unless logged_in?
    end
end
