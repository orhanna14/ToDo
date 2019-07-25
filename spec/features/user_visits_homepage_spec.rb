require "rails_helper"

feature "User visits homepage" do 
  scenario "successfully" do
    visit root_path

    expect(page).to have_css 'h1', text: 'Todos'
    #expect is RSpec (page is provided by capybara) 
  #verify CSS
  #check for an H1
  end
end