require 'rails_helper'

feature 'Log in' do
  scenario "A registered user can log in" do
    sign_up
    click_link "Log out"
    click_button "Log In"
    fill_in "Email", with: "bob@test.com"
    fill_in "Password", with: "Bobobob"
    click_button "Log in"
    expect(page).to have_current_path('/')
    expect(page).to have_content("Welcome, Bob")
    expect(page).to have_content("Log out")
  end

  scenario "An unregistered user cannot see a log out button" do
    visit "/welcome"
    expect(page).not_to have_content("Log out")
  end

  scenario "A user that has not signed up cannot log in" do
    log_in
    expect(page).not_to have_content("Welcome Bob")
    expect(page).to have_content("login")
  end


  scenario "user is told if email is incorrect" do 
    sign_up 
    click_link "Log out"
    click_button "Log In"
    fill_in "Email", with: "potatoman@potato.pot"
    fill_in "Password", with: "Bobobob"
    click_button "Login"
    expect(page).to have_current_path('/login')
    expect(page).not_to have_content("Welcome Bob")
    expect(page).to have_content("Email is invalid")
    expect(page).not_to have_content("Password is invalid")
  end

  scenario "user told if password is incorrect" do
    sign_up 
    click_link "Log out"
    click_button "Log In"
    fill_in "Email", with: "bob@test.com"
    fill_in "Password", with: "notMyPassword"
    click_button "Login"
    expect(page).to have_content("Password is invalid")
  end

end
