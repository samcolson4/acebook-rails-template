# require 'rails_helper'

# RSpec.describe CommentController, type: :controller do 

#  describe "Post /posts/:id/comment" do 
#     User.create(name: "Bob", email: "bob@bob.com", password: "1234567")
#     user = User.find_by(name: "Bob")
#     allow(User).to receive(:find_by).and_return(user)
#     post :create, params: { post: { message: "Hello, world!", user_id: user.id } }
#     post = Post.find_by(message: "Hello, world!")
    
#     post :comment, params: { id: post.id }
#     expect(response).to redirect_to(root_url)
#  end
# end