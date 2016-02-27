require 'rails_helper'

feature "Guest visits homepage" do
  scenario "learn about appliation" do
    visit root_path

    expect(page).to have_css "h1", text: "Welcome to todos"
    expect(page).to have_title "Todos"
  end
end

