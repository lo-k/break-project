require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "POST #create" do
    it "creates a new user" do
      get :create, {user: {name: "Joe", email: "joe@email.com", password: "hello", password_confirmation: "hello"}}

      expect(User.all.count).to eq 1
    end
  end

end
