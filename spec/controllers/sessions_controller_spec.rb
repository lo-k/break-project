require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "POST #create" do
    let(:sarah) { create :user }

    # it "assigns the session[:user_id]" do
    #   get :create, {session: {email: "sarah@email.com", password: "hello"}}
    #   expect(session[:user_id]).to eq sarah.id
    # end

    it "redirects to the user's dashboard" do
      get :create, {session: {email: "sarah@email.com", password: "hello"}}
      expect(response).to redirect_to dashboard_path
    end
  end

  describe "DELETE #destroy" do
    let(:sarah) { create :user }

    before :each do
      session[:user_id] = sarah.id
      delete :destroy
    end

    it "removes the current_user's id from sessions" do
      expect(session[:user_id]).to be_nil
    end

    it "redirects to the homepage" do
      expect(response).to redirect_to root_path
    end
  end
end
