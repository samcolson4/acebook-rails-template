require 'rails_helper'

feature "comments" do 
    scenario "user can delete comment" do 
      sign_up_as_potato
      make_post
      fill_in "comment[body]", with: "First comment"
      click_button "Create Comment"
      click_link "Destroy Comment"
      expect(page).not_to have_content "First comment"
    end

    scenario "user can edit their own comment" do 
        sign_up_as_potato
        make_post
        fill_in "comment[body]", with: "First comment"
        click_button "Create Comment"
        click_link "Edit Comment"
        fill_in "comment[body]", with: "Second comment"
        click_button "Update Comment"
        expect(page).to have_content "Second comment"
        expect(page).not_to have_content "First comment"
    end

    scenario "user cannot edit other user comments" do 
      sign_up_as_potato
      make_post
      fill_in "comment[body]", with: "First comment"
      click_link "Log out"
      sign_up
      expect(page).not_to have_link "Edit Comment"

    end
end 