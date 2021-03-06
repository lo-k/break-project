class CityListsController < ApplicationController

  def new
    @city_list = CityList.new
    @user = User.find(session[:user_id])
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
    @completed = @city_list.percent_completed
    @favs_count = @city_list.count_favs
    
    @list_items = @city_list.list_items

    @new_list_item = ListItem.new
  end

  def update
  end

#####################################################################
  private

  def city_list_params
    params.require(:city_list).permit(:city, :user_id)
  end

end
