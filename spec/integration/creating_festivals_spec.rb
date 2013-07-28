require 'spec_helper'

feature "Create a festival" do
  scenario "Can create a festival" do
    visit "/"
    click_link "Add New Festival"
    fill_in "Festival Name", with: "Fun fest"
    select "2013", from: "Year"
    select "December", from: "festival_date_2i"
    select "1", from: "festival_date_3i"
    click_button "Add Festival"
    page.should have_content "Festival added"
  end
end
