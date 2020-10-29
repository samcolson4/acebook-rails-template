require 'rails_helper'

feature "delete post" do 
  scenario "User can delete post" do 
    sign_up 
    make_post
    click_link "delete"
    expect(page).not_to have_content("Hello, world!")
  end
end