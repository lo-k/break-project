require 'rails_helper'

RSpec.describe ListItem, type: :model do
  describe "model validations" do
    # ADD MORE VALIDATIONS ONCE THEY ARE SOLIDIFIED
    it "requires a title" do
      list_item = ListItem.new

      expect(list_item).to_not be_valid
      expect(list_item.errors.keys).to include(:title)
    end

    it "belongs to a user" do
      expect(ListItem.reflect_on_association(:user).macro).to eq(:belongs_to)
    end

    it "belongs to a city_list" do
      expect(ListItem.reflect_on_association(:city_list).macro).to eq(:belongs_to)
    end

  end
end
