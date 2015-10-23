require 'rails_helper'

describe "the user login process" do
  it "logs a user into site" do
    visit root_path
    click_link "Sign up"
    fill_in "Email", with: "cat@cat.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
  end
end
