require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "responds with 200" do
      post :create, params: { user: { name: "Bob", email: "bob@bob.com", password: "1234567" } }
      expect(response).to redirect_to(welcome_url)
    end
  end

end
