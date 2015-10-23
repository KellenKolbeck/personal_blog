require 'rails_helper'

describe "the add a post process" do
  it "adds a post to the website" do
    visit root_path
    login_user
    click_link "Add A Post"
    fill_in "Title", with: "Kellen"
    fill_in "Body", with: "Hello"
    click_button "Create Post"
    expect(page).to have_content "Kellen"
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
