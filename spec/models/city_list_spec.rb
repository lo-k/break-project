require 'rails_helper'

RSpec.describe CityList, type: :model do
  describe "model validations" do
    it "requires a city and user_id" do
      city_list = CityList.new

      expect(city_list).to_not be_valid
      expect(city_list.errors.keys).to include(:city,:user_id)
    end

    it "belongs to a user" do
      expect(CityList.reflect_on_association(:user).macro).to eq(:belongs_to)
    end

    it "has many list_items" do
      expect(CityList.reflect_on_association(:list_items).macro).to eq(:has_many)
    end

  end

end
