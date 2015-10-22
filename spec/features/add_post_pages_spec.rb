require 'rails_helper'

describe "the add a post process" do
  it "adds a post to the website" do
    visit root_path
    click_link "Add A Post"
    fill_in "Title", with: "Kellen"
    fill_in "Body", with: "Hello"
    click_button "Create Post"
    expect(page).to have_content "Kellen"
  end
end
