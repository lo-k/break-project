class ListItemsController < ApplicationController

  def new
  end

  def create
    @list_item = ListItem.new(list_item_params)

    @city_list = CityList.find(params[:city_list_id])
    @list_item.city_list_id = @city_list.id
    
    if @list_item.save
      redirect_to city_list_path(@city_list.id)
    else
      flash.now[:error] = "Try again, ListItem was not created."
      render city_list_path(@city_list.id)
    end
  end

  def destroy
    @list_item = ListItem.find(params[:id])
    @list_item.destroy

    redirect_to city_list_path(@list_item.city_list_id)
  end

  def update
  end
#####################################################################
  private

  def list_item_params
    params.require(:list_item).permit(:title, :address, :complete, :favorite, :city_list_id)
  end
end
