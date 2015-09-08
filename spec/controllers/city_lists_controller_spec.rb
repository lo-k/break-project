require 'rails_helper'

RSpec.describe CityListsController, type: :controller do

  describe "POST #create" do
    let(:sarah) { create :user }

    it "creates a new city_list" do
      session[:user_id] = sarah.id
      get :create, {city_list: {city: "Seattle"}}

      expect(CityList.count).to eq 1
    end
  end

  describe "DELETE #destroy" do
    let(:seattle) { create :city_list }

    it "deletes a city_list" do
      delete :destroy, id: seattle.id

      expect(CityList.count).to eq 0
    end

    # it "redirects to user's dashboard" do
    #   expect(response).to redirect_to dashboard_path
    # end
  end

end
