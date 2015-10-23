require 'rails_helper'

describe "the delete a post process" do
  it "will destroy a post" do
    post = FactoryGirl.create(:post)
    visit root_path
    login_user
    click_link "Delete"
    expect(page).to have_no_content "Kellen"
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
