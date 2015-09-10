require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #new" do
    it "renders the new template" do
      get :new

      expect(response).to render_template 'new'
    end
  end

  describe "POST #create" do
    context "valid params" do
      it "creates a new user" do
        get :create, {user: {name: "Joe", email: "joe@email.com", password: "hello", password_confirmation: "hello"}}

        expect(User.all.count).to eq 1
      end
    end

    context "invalid params" do
      it "does not create a new user" do
        get :create, {user: {name: "Joe", email: "joe@email.com", password: "hellooooo", password_confirmation: "hello"}}

        expect(User.all.count).to eq 0
      end
    end

  end

  describe "GET #dashboard" do
    let(:sarah) { create :user }

    context "user is logged in" do
      it "renders the user's dashboard" do
        session[:user_id] = sarah.id
        get :dashboard

        expect(response).to render_template 'dashboard'
      end
    end
    
    context "user is not logged in" do
      it "redirects to the root path" do
        session[:user_id] = nil
        get :dashboard

        expect(response).to redirect_to root_path
      end
    end
  end

end
