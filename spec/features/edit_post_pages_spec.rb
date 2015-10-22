require 'rails_helper'

describe "the edit a post process" do
  it "edits an existing post" do
    post = FactoryGirl.create(:post)
    visit root_path
    click_link "Edit"
    fill_in "Title", with: "Terry"
    click_button "Update Post"
    expect(page).to have_content "Terry"
  end
end
