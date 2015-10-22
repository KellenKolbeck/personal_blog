require 'rails_helper'

describe "the delete a post process" do
  it "will destroy a post" do
    post = FactoryGirl.create(:post)
    visit root_path
    click_link "Delete"
    expect(page).to have_no_content "Kellen"
  end
end
