require 'rails_helper'

feature "Timeline" do
  scenario "Can submit posts and view them" do
    sign_up
    click_link "new post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
  end

  scenario "can submit post and see users name" do
    sign_up
    click_link "new post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Bob")
  end

  scenario "can submit post and see date of submission" do
    sign_up
    click_link "new post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content(/\d{4}-\d{2}-\d{2}/)
  end

  scenario "User can make a post on their own profile page and view it" do
    sign_up_as_potato
    user = User.find_by(name: "Potato")
    visit "/users/#{user.id}"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content "Hello, world!"
  end

  scenario "User can make a post on someone else's profile page and view it" do
    sign_up
    user1 = User.find_by(name: "Bob")
    click_link("Log out")
    sign_up_as_potato
    user2 = User.find_by(name: "Potato")
    visit "/users/#{user1.id}"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    visit "/users/#{user1.id}"
    expect(page).to have_content "Hello, world!"
    visit "/users/#{user2.id}"
    expect(page).not_to have_content "Hello, world!"
  end
end
