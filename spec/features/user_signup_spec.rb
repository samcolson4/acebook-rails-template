require 'rails_helper'

RSpec.feature "Signup", type: :feature do
  scenario "Can sign up with name, email and password" do
    visit "/welcome"
    click_button "Sign Up"
    fill_in "Name", with: "Bob"
    fill_in "Email", with: "bob@test.com"
    fill_in "Password", with: "Bobobob"
    click_button "Create User"
    expect(page).to have_content("Welcome Bob")
  end
end
