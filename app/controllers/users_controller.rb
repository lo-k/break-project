class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to dashboard_path
    else
      flash.now[:error] = "Try again, account was not created."
      render :new
    end

  end

  def dashboard
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      flash[:error] = "Please login to view your CityLists"
      redirect_to root_path
    end
  end

#####################################################################
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
