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

  context "unsucesfully" do
    scenario "if name is not provided" do
      visit root_path
      click_on "New todo"

      fill_in "Name", with: ""
      click_on "Add"

      expect(page).to have_css '.errors li', text: "Name can't be blank"
    end
  end
end
