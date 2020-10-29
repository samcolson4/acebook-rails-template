require 'rails_helper'

feature "View posts on profile" do
  scenario "user goes to their personal wall and sees posts they have made" do
    sign_up_as_potato
    user = User.find_by(name: "Potato")
    make_post
    visit "/users/#{user.id}"
    expect(page).to have_content "Hello, world!"
  end
end