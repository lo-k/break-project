require 'rails_helper'

RSpec.describe ListItemsController, type: :controller do

  describe "POST #create" do
    let(:seattle) { create :city_list }

    it "creates a new list_item" do
      get :create, {list_item: {title: "See the Fremont Troll", address: "123 Troll Street", complete: false, favorite: false}, city_list_id: seattle.id }

      expect(CityList.count).to eq 1
    end
  end

  describe "DELETE #destroy" do
    let(:seattle) { create :city_list }
    let(:fremont) { create :list_item }

    it "deletes a list_item" do
      delete :destroy, id: fremont.id, city_list_id: seattle.id

      expect(ListItem.count).to eq 0
    end

    # it "redirects to its CityList show page" do
    #   expect(response).to redirect_to city_list_path(seattle.id)
    # end
  end

end
