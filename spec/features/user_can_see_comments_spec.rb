require 'rails_helper'

feature "comments" do 
 scenario "user can comment" do 
  sign_up_as_potato
  make_post
  fill_in "comment[body]", with: "First comment"
  click_button "Create Comment"
  expect(page).to have_content "First comment"
 end 

 scenario "user can delete comment" do 
    sign_up_as_potato
    make_post
    fill_in "comment[body]", with: "First comment"
    click_button "Create Comment"
    click_link "Destroy Comment"
    expect(page).not_to have_content "First comment"
 end
end 