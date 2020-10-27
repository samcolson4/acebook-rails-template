require 'rails_helper'

feature 'Add friend' do
  scenario 'A user can send a friend request' do
    sign_up
    requestee = User.find_by(name: "Bob")
    click_link("Log out")
    sign_up_as_potato
    visit "/users/#{requestee.id}"
    click_button("Add Friend")
    expect(page).to have_content("Friend request sent")
    expect(page).to have_current_path("/users/#{requestee.id}")
  end
end