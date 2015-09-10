class CityListsController < ApplicationController

  def new
    @city_list = CityList.new
  end

  def create
    @city_list = CityList.new(city_list_params)
    
    @user = User.find(session[:user_id])
    @city_list.user_id = @user.id
    
    if @city_list.save
      redirect_to dashboard_path
    else
      flash.now[:error] = "Try again, CityList was not created."
      render dashboard_path
    end
  end

  def destroy
    @city_list = CityList.find(params[:id])
    @city_list.destroy

    redirect_to dashboard_path 
  end

  def show
    @user = User.find(session[:user_id])
    @city_list = CityList.find(params[:id])
  end

  def update
  end

#####################################################################
  private

  def city_list_params
    params.require(:city_list).permit(:city, :user_id)
  end

end
