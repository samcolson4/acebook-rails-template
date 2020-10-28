require 'rails_helper'

describe CommentsController do

 describe "POST /posts/:post_id/comments" do
   it 'redirects to the home page' do
     User.create(name: "Bob", email: "bob@bob.com", password: "1234567")
     user = User.find_by(name: "Bob")
     allow(User).to receive(:find_by).and_return(user)
     Post.create(message: "Hello, world!", user_id: user.id)
     my_post = Post.find_by(message: "Hello, world!")

     post :create, params: { post_id: my_post.id, comment: { body: "This is our comment", user_id: user.id } }
     expect(response).to redirect_to(root_url)
   end

   it 'stores the comment' do
     User.create(name: "Bob", email: "bob@bob.com", password: "1234567")
     user = User.find_by(name: "Bob")
     allow(User).to receive(:find_by).and_return(user)
     Post.create(message: "Hello, world!", user_id: user.id)
     my_post = Post.find_by(message: "Hello, world!")

     post :create, params: { post_id: my_post.id, comment: { body: "This is our comment", user_id: user.id } }
     expect(Comment.find_by(body: "This is our comment")).to be
   end
 end

 describe "DELETE /posts/:post_id/comments/:id" do
   it 'redirects to the home page' do
     User.create(name: "Bob", email: "bob@bob.com", password: "1234567")
     user = User.find_by(name: "Bob")
     allow(User).to receive(:find_by).and_return(user)
     Post.create(message: "Hello, world!", user_id: user.id)
     my_post = Post.find_by(message: "Hello, world!")
     post :create, params: { post_id: my_post.id, comment: { body: "This is our comment", user_id: user.id } }
     comment = Comment.find_by(body: "This is our comment")

     delete :destroy, params: { post_id: my_post.id, id: comment.id }
     expect(response).to redirect_to(root_url)
   end
 end
end