class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:session][:email])
    session[:user_id] = @user.id

    redirect_to dashboard_path
  end

  def destroy
    session[:user_id] = nil
    
    redirect_to root_path
  end

end
