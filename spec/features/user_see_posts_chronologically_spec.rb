require 'rails_helper'

feature "newsfeed" do
  scenario "posts are shown newest first" do
    sign_up_as_potato
    make_post
    click_link "new post"
    fill_in "Message", with: "Hello, planet!"
    click_button "Submit"
    expect("Hello, planet!").to appear_before("Hello, world!", only_text: true)
  end
end