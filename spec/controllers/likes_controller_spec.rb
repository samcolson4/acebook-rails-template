require 'rails_helper'

describe LikesController do
  describe "POST /" do
    it "adds a like to a post if not already liked by user" do
      User.create(name: "Bob", email: "bob@bob.com", password: "1234567")
      user = User.find_by(name: "Bob")
      allow(User).to receive(:find_by).and_return(user)
      Post.create(message: "Hello, world!", user_id: user.id, posted_to_id: user.id )
      my_post = Post.find_by(message: "Hello, world!")
      post :create, params: { post_id: my_post.id, user_id: user.id }
      expect(Like.first).to be
    end
    
    it "removes like from post if already liked by user" do
      User.create(name: "Bob", email: "bob@bob.com", password: "1234567")
      user = User.find_by(name: "Bob")
      allow(User).to receive(:find_by).and_return(user)
      Post.create(message: "Hello, world!", user_id: user.id, posted_to_id: user.id )
      my_post = Post.find_by(message: "Hello, world!")
      post :create, params: { post_id: my_post.id, user_id: user.id }

      post :create, params: { post_id: my_post.id, user_id: user.id }
      expect(Like.first).not_to be
    end

    it "redirects back to the page" do
      User.create(name: "Bob", email: "bob@bob.com", password: "1234567")
      user = User.find_by(name: "Bob")
      allow(User).to receive(:find_by).and_return(user)
      Post.create(message: "Hello, world!", user_id: user.id, posted_to_id: user.id )
      my_post = Post.find_by(message: "Hello, world!")
      post :create, params: { post_id: my_post.id, user_id: user.id }

      expect(response).to have_http_status(302)
    end
  end

end
