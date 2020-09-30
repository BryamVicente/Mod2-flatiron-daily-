class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :login, :handle_login]
  
  def index
    @articles = Article.all
  end

  def new
    @user = User.new
  end

  def create
      @user = User.create(user_params)
      if @user.valid?
          session[:user] = @user.id
          redirect_to new_user_interest_path
      else
        flash[:my_errors] = @user.errors.full_messages
        redirect_to new_user_path
      end
  end

  def login
  end

  def handle_login
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user] = @user.id
      redirect_to user_path(@user)
    else
      flash[:my_errors] = "Incorrect Username or Password"
      redirect_to login_path
    end
  end

  def logout
      session[:user] = nil
      redirect_to login_path
  end

  private
  def user_params
      params.require(:user).permit(:username, :name, :password, :password_confirmation)
  end

end
