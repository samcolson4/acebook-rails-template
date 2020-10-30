module Helpers
  module Authentication
    def sign_up
      visit "/welcome"
      click_button "sign up"
      fill_in "Name", with: "Bob"
      fill_in "Email", with: "bob@test.com"
      fill_in "Password", with: "Bobobob"
      click_button "sign up"
    end

    def sign_up_as_potato
      visit "/welcome"
      click_button "sign up"
      fill_in "Name", with: "Potato"
      fill_in "Email", with: "potato@test.com"
      fill_in "Password", with: "mashed"
      click_button "sign up"    
    end

    def sign_up_log_in
      visit "/welcome"
      click_button "sign up"
      fill_in "Name", with: "Bob"
      fill_in "Email", with: "bob@test.com"
      fill_in "Password", with: "Bobobob"
      click_button "sign up"      
      click_link "Log out"
      click_button "log in"
      fill_in "Email", with: "bob@test.com"
      fill_in "Password", with: "Bobobob"
      click_button "log in"
    end

    def log_in
      visit "/welcome"
      click_button "log in"
      fill_in "Email", with: "bob@test.com"
      fill_in "Password", with: "Bobobob"
      click_button "log in"
    end
  end
end
