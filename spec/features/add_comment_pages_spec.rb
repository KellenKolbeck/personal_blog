require 'rails_helper'

describe "the add comment process" do
  it "will add a comment to a post" do
    login_user
    post = FactoryGirl.create(:post)
    visit root_path
    click_on post.title
    click_link "Add comment"
    comment = FactoryGirl.create(:comment)
    click_button "Create Comment"
    expect(page).to have_content comment.comment_body

  end

  def login_user
   visit root_path
   click_link "Sign up"
   fill_in "Email", with: "cat@cat.com"
   fill_in "Password", with: "password"
   fill_in "Password confirmation", with: "password"
   click_button "Sign up"
  end
end
