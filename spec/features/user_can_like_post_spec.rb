require 'rails_helper'

feature 'like post' do
  scenario 'A user can like a post and see the number of likes go up' do
    sign_up
    make_post
    expect(page).to have_selector(:link_or_button, 'Like')    
    click_button("Like")
    expect(page).to have_content("1 like")
  end

end
