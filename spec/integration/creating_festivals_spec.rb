require 'spec_helper'

feature "Create a festival" do
  scenario "Can create a festival" do
    visit "/"
    click_link "Add New Festival"
    fill_in "Festival Name", with: "Fun fest"
    fill_in "Date", with: "12/10/2013"
    click_button "Add Festival"
    page.should have_content "Festival added"
  end
end
