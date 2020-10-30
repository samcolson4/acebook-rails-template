module Helpers
  module Posts
    def make_post
      # click_link "new post"
      fill_in "post_test_area", with: "Hello, world!"

      click_button "post"
    end
  end
end