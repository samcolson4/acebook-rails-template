require 'rails_helper'

feature 'Viewing friends' do
  scenario "A user's friend list is blank if they have no friends" do
    sign_up
    requestee = User.find_by(name: "Bob")
    click_link("Log out")
    sign_up_as_potato
    visit "/users/#{requestee.id}"
    click_button("view friends")
    expect(page).not_to have_content("Potato")
  end

  scenario "A user can view another user's friends list" do
    sign_up
    requestee = User.find_by(name: "Bob")
    click_link("Log out")
    sign_up_as_potato
    visit "/users/#{requestee.id}"
    click_button("Add Friend")
    click_button("view friends")
    expect(page).to have_content("Potato")
  end
end