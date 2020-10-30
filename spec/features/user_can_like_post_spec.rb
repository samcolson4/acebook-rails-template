require 'rails_helper'

feature 'like post' do
  scenario 'A user can like a post and see the number of likes go up' do
    sign_up
    make_post
    expect(page).to have_selector(:link_or_button, '👍')    
    click_button("👍")
    expect(page).to have_button("👍 1")
  end

  # scenario 'A user can only like a post once and unlike it' do
  #   sign_up
  #   make_post
  #   click_button("👍")
  #   expect(page).to have_content("1")
  #   click_button("👍")
  #   expect(page).not_to have_content("1")
  #   # TODO fix test
  # end
end
