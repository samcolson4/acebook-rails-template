require 'rails_helper'

describe FriendsController do
  describe "POST /users/:user_id/friends" do

    before :each do 
      User.create(name: "Bob", email: "bob@bob.com", password: "1234567")
      User.create(name: "Josh", email: "Josh@bob.com", password: "1234567")
      
      user = User.find_by(name: "Bob")
      user2 = User.find_by(name: "Josh")
      
      allow(User).to receive(:find_by).and_return(user)

      post :create, params: { friend: { requester_id: user.id, requestee_id: user2.id } }
      
      @friend = Friend.find_by(requester_id: user.id)
      p @friend
    end

    it 'redirects to user page' do
      expect(response).to have_http_status(302)
    end

    it 'creates a friend object' do
      expect(@friend).to be
    end

    it 'defaults the status to pending' do
      expect(@friend.status).to eq "pending"
    end

  end

end
