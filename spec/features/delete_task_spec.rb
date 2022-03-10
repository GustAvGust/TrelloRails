require "rails_helper"

RSpec.feature "delete List" do
  let(:current_user) { create :user }

  before do
    login_as(current_user)

    List.create(header: "List1", user: current_user)
  end

  scenario "User delete list" do
    visit "/"
    click_link "Lists"
    find_by_id("delete_list").click
    # page.accept_confirm { click_button "OK" }

    expect(page).to_not have_text("List1")
  end
end
