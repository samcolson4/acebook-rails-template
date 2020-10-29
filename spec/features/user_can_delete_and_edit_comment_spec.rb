require 'rails_helper'

feature "comments" do 
    scenario "user can delete comment from newsfeed" do
      sign_up_as_potato
      make_post
      fill_in "comment[body]", with: "First comment"
      click_button "Create Comment"
      click_link "delete"
      expect(page).to have_current_path "/"
      expect(page).not_to have_content "First comment"
    end

    scenario "user can delete comment from profile page" do
      sign_up_as_potato
      user = User.find_by(name: "Potato")
      visit "/users/#{user.id}"
      make_post
      fill_in "comment[body]", with: "First comment"
      click_button "Create Comment"
      # TODO: link names need to be refactored
      click_link "delete"
      expect(page).to have_current_path "/users/#{user.id}"
      expect(page).not_to have_content "First comment"
    end

    scenario "user can edit their own comment" do 
        sign_up_as_potato
        make_post
        fill_in "comment[body]", with: "First comment"
        click_button "Create Comment"
        allow(Time).to receive(:now).and_return(Time.now + 700)
        click_link "edit"
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