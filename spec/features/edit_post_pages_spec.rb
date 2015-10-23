require 'rails_helper'

describe "the edit a post process" do
  it "edits an existing post" do
    post = FactoryGirl.create(:post)
    visit root_path
    login_user
    click_link "Edit"
    fill_in "Title", with: "Terry"
    click_button "Update Post"
    expect(page).to have_content "Terry"
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
