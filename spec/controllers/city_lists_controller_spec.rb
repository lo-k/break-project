require 'rails_helper'

RSpec.describe CityListsController, type: :controller do

  describe "POST #create" do
    let(:sarah) { create :user }

    it "creates a new city_list" do
      session[:user_id] = sarah.id
      get :create, {city_list: {city: "Seattle"}}

      expect(CityList.all.count).to eq 1
    end
  end

end
