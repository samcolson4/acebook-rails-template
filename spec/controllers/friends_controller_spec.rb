require 'rails_helper'

describe FriendsController do
  describe "POST /users/:user_id/friends" do
    it 'responds with 200' do
      User.create(name: "Bob", email: "bob@bob.com", password: "1234567")
      User.create(name: "Josh", email: "Josh@bob.com", password: "1234567")
      
      user = User.find_by(name: "Bob")
      user2 = User.find_by(name: "Josh")
      
      allow(User).to receive(:find_by).and_return(user)

      post :create, params: { user_id: user.id, friend: { requester: user.id, requestee: user2.id }}
      
      expect(response).to have_http_status(200)
    end
  end

end
