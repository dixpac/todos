require 'rails_helper'

feature "User creates todo" do
  context "sucessfully" do
    scenario "craetes new todo" do
      visit root_path
      click_on "New todo"

      name = "Buy a cow"

      fill_in "Name", with: name
      click_on "Add"

      expect(page).to have_css '.todos li', text: name
    end
  end
end
