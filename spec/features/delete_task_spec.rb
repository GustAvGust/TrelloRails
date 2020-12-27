require "rails_helper"

RSpec.feature "delete List" do
  before do
    List.create(header: "List1")
  end
  
  scenario "User delete list" do
    visit "/"
    click_link "Lists"
    find_by_id("delete_list").click
    # page.accept_confirm { click_button "OK" }

    expect(page).to_not have_text("List1")
  end
end