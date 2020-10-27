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

  scenario "Add friend button is not displayed on user's own page" do
    sign_up
    user = User.find_by(name: "Bob")
    visit "/users/#{user.id}"
    expect(page).not_to have_button("Add Friend")
  end
end