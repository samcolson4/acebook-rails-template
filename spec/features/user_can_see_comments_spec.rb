require 'rails_helper'

feature "comments" do 
 scenario "user can comment on a post via newsfeed" do
  sign_up_as_potato
  make_post
  fill_in "comment[body]", with: "First comment"
  click_button "Create Comment"
  expect(page).to have_current_path "/"
  expect(page).to have_content "First comment"
 end

 scenario "user can comment on a post via profile page" do
  sign_up_as_potato
  user = User.find_by(name: "Potato")
  visit "/users/#{user.id}"
  make_post
  fill_in "comment[body]", with: "First comment"
  click_button "Create Comment"
  expect(page).to have_current_path "/users/#{user.id}"
  expect(page).to have_content "First comment"
 end
end 