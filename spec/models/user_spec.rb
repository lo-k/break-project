require 'rails_helper'

RSpec.describe User, type: :model do
  describe "model validations" do
    it "requires a name, email, password and password confirmaiton" do
      user = User.new

      expect(user).to_not be_valid
      expect(user.errors.keys).to include(:name, :email, :password, :password_confirmation)
    end

    it "has many city_lists" do
      expect(User.reflect_on_association(:city_lists).macro).to eq(:has_many)
    end

    it "has many list_items" do
      expect(User.reflect_on_association(:list_items).macro).to eq(:has_many)
    end

  end
end
